class UploadsController < ApplicationController
  before_filter :authenticate_user!
  
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

      generation = @datos.row(row)[headers['Country']]
      ycode = @datos.row(row)[headers['Country']]
      submitted = @datos.row(row)[headers['Country']]
      readyforjudging = @datos.row(row)[headers['Country']]
      code = @datos.row(row)[headers['Country']]
      selected = @datos.row(row)[headers['Country']]
      formalized = @datos.row(row)[headers['Country']]
      et = @datos.row(row)[headers['Country']]
      arrivalstage = @datos.row(row)[headers['Country']]
      website = @datos.row(row)[headers['Country']]
      angellist = @datos.row(row)[headers['Country']]
      pitch = @datos.row(row)[headers['Country']]
      incorporated = @datos.row(row)[headers['Country']]
      demoday = @datos.row(row)[headers['Country']]
      roundtable = @datos.row(row)[headers['Country']]
      fulltpeople = @datos.row(row)[headers['Country']]
      startupage = @datos.row(row)[headers['Country']]
      capitalraisedbefore = @datos.row(row)[headers['Country']]
      mentorab = @datos.row(row)[headers['Country']]
      reapplaying = @datos.row(row)[headers['Country']]
      hearaboutsup = @datos.row(row)[headers['Country']]
      startdate = @datos.row(row)[headers['Country']]
      finishdate = @datos.row(row)[headers['Country']]
      statusnow = @datos.row(row)[headers['Country']]
      capitalraisedmusta = @datos.row(row)[headers['Country']]
      datemusta = @datos.row(row)[headers['Country']]
      capitalraisedmustb = @datos.row(row)[headers['Country']]
      datemustb = @datos.row(row)[headers['Country']]
      exitstage = @datos.row(row)[headers['Country']]
      nextprogram = @datos.row(row)[headers['Country']]
      incorpchile = @datos.row(row)[headers['Country']]
      dateic = @datos.row(row)[headers['Country']]
      incorpabroad = @datos.row(row)[headers['Country']]
      dateia = @datos.row(row)[headers['Country']]
      pivoted = @datos.row(row)[headers['Country']]
      pnewname = @datos.row(row)[headers['Country']]

      Proyect.create(
        name: name,
        country: country,
        generation: generation,
        ycode:  ycode,
        #submitted: submitted,
        #readyforjudging: readyforjudging,
        code: code,
        #selected: selected,
        #formalized: formalized, et: et,
        arrivalstage: arrivalstage,
        website: website,
        angellist: angellist,
        pitch: pitch,
        #incorporated: incorporated,
        #demoday: demoday,
        #roundtable: roundtable,
        #fulltpeople: fulltpeople,
        startupage: startupage,
        capitalraisedbefore: capitalraisedbefore,
        mentorab: mentorab,
        reapplaying: reapplaying,
        hearaboutsup: hearaboutsup,
        startdate: startdate,
        finishdate: finishdate,
        statusnow: statusnow,
        capitalraisedmusta: capitalraisedmusta,
        datemusta: datemusta,
        capitalraisedmustb: capitalraisedmustb,
        datemustb: datemustb,
        exitstage: exitstage,
        nextprogram: nextprogram,
        incorpchile: incorpchile,
        dateic: dateic,
        #incorpabroad: incorpabroad,
        dateia: dateia,
        pivoted: pivoted,
        pnewname: pnewname

        )
    end

    @projects = Proyect.all
  end
end
  