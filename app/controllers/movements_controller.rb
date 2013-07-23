class MovementsController < ApplicationController
  before_filer :check_project

  def check_project
    @project = Project.find(params[:id])
  end

  # GET /movements
  # GET /movements.json
  def index
    @movements = Movement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @movements }
    end
  end

  # GET /movements/1
  # GET /movements/1.json
  def show
    @movement = @project.movements.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @movement }
    end
  end

  # GET /movements/new
  # GET /movements/new.json
  def new
    @movement = @project.movements.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @movement }
    end
  end

  # GET /movements/1/edit
  def edit
    @movement = @project.movements.find(params[:id])
  end

  # POST /movements
  # POST /movements.json
  def create
    @movement = @project.movements.new(params[:movement])

    respond_to do |format|
      if @movement.save
        format.html { redirect_to @movement, notice: 'Movement was successfully created.' }
        format.json { render json: @movement, status: :created, location: @movement }
      else
        format.html { render action: "new" }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /movements/1
  # PUT /movements/1.json
  def update
    @movement = @project.movements.find(params[:id])

    respond_to do |format|
      if @movement.update_attributes(params[:movement])
        format.html { redirect_to @movement, notice: 'Movement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movements/1
  # DELETE /movements/1.json
  def destroy
    @movement = @project.movements.find(params[:id])
    @movement.destroy

    respond_to do |format|
      format.html { redirect_to movements_url }
      format.json { head :no_content }
    end
  end
end
