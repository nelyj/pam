class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def show
  end

  def new
    @upload = Upload.new
    respond_to do |format|
      format.html
      format.json { render json: @upload }
    end
  end

  def edit
  end

  def create
    @upload = Upload.new(params[:upload])

    respond_to do |format|
      if @upload.save
        format.html { redirect_to cargas_path, notice: 'El archivo fue cargado.'}
        format.json { render json: cargas_path, status: :created, location: @upload }
      else
        format.html { render action: "new" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end

  def procesar
    @upload = Upload.find(params[:id])
    @datos = Roo::Excelx.new(root_url  + @upload.attached.url) 
    @datos.default_sheet = @datos.sheets[0]
    headers = Hash.new
    @datos.row(1).each_with_index { |header, i| headers[header] = i }

    ((@datos.first_row + 1 )..@datos.last_row).each do |row|
      name = @datos.row(row)[headers['Project Name']]
      country = @datos.row(row)[headers['Country']]

      Proyect.create(name: name, country: country)
    end

    @projects = Proyect.all
  end
end
