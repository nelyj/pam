class UploadsController < ApplicationController
  def index
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
  end

  def update
  end

  def destroy
  end
end
