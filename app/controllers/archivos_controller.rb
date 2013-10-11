class ArchivosController < ApplicationController
  before_filter :authenticate_user!, except: [:index]
  # GET /archivos
  # GET /archivos.json
  def index
    @archivos = Archivo.all

    if user_signed_in?
      redirect_to dashboard_path
    else
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @archivos }
      end
    end
  end

  # GET /archivos/1
  # GET /archivos/1.json
  def show
    @archivo = Archivo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @archivo }
    end
  end

  # GET /archivos/new
  # GET /archivos/new.json
  def new
    @archivo = Archivo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @archivo }
    end
  end

  # GET /archivos/1/edit
  def edit
    @archivo = Archivo.find(params[:id])
  end

  # POST /archivos
  # POST /archivos.json
  def create
    @archivo = Archivo.new(params[:archivo])

    respond_to do |format|
      if @archivo.save
        format.html { redirect_to @archivo, notice: 'Archivo was successfully created.' }
        format.json { render json: @archivo, status: :created, location: @archivo }
      else
        format.html { render action: "new" }
        format.json { render json: @archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /archivos/1
  # PUT /archivos/1.json
  def update
    @archivo = Archivo.find(params[:id])

    respond_to do |format|
      if @archivo.update_attributes(params[:archivo])
        format.html { redirect_to @archivo, notice: 'Archivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @archivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archivos/1
  # DELETE /archivos/1.json
  def destroy
    @archivo = Archivo.find(params[:id])
    @archivo.destroy

    respond_to do |format|
      format.html { redirect_to archivos_url }
      format.json { head :no_content }
    end
  end
end
