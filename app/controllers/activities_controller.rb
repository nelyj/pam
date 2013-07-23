class ActivitiesController < ApplicationController

  # GET /activities
  # GET /activities.json
  def index
    @project = Proyect.find(params[:proyect_id])
    @activities = @project.activities

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @activities }
    end
  end

  # GET /activities/1
  # GET /activities/1.json
  def show
    @project = Proyect.find(params[:proyect_id])
    @activity = @project.activities.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @activity }
    end
  end

  # GET /activities/new
  # GET /activities/new.json
  def new
    @project = Proyect.find(params[:proyect_id])
    @activity = @project.activities.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @activity }
    end
  end

  # GET /activities/1/edit
  def edit
    @project = Proyect.find(params[:proyect_id])
    @activity = @project.activities.find(params[:id])
  end

  # POST /activities
  # POST /activities.json
  def create
    @project = Proyect.find(params[:proyect_id])
    @activity = @project.activities.new(params[:activity])

    respond_to do |format|
      if @activity.save
        format.html { redirect_to proyect_activities_path(@project), notice: 'Activity was successfully created.' }
        format.json { render json: proyect_activities_url, status: :created, location: @activity }
      else
        format.html { render action: "new" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /activities/1
  # PUT /activities/1.json
  def update
    @project = Proyect.find(params[:proyect_id])
    @activity = @project.activities.find(params[:id])

    respond_to do |format|
      if @activity.update_attributes(params[:activity])
        format.html { redirect_to proyect_activities_url, notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activities/1
  # DELETE /activities/1.json
  def destroy
    @project = Proyect.find(params[:proyect_id])
    @activity = @project.activities.find(params[:id])
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to proyect_activities_url }
      format.json { head :no_content }
    end
  end

end
