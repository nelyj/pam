class LandingController < ApplicationController
  def index
    
  end

  def activities
    @activities = Activity.all
    
    respond_to do |format|
      format.html
    end
  end

  def movements
    @movements = Movement.all
    
    respond_to do |format|
      format.html
    end
  end

end
