class EstimationController < ApplicationController
  def index
    @estimations = Estimation.all
    # @sec_id = ParamSection.where(name: "complexity")
    # @params = Parameter.where(:param_section_id => { "$in" => @sec_id})
    
    @parameters = Parameter.param_level
    
    # workout_ids = Workout.where(:user_id => current_user.id ).all.collect { |w| w.id }
    # exercises = Exercise.where(:workout_id => { "$in" => workout_ids })

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  def show
  end

  def new
    @estimation = Estimation.new
    @metric = Metric.new
    
    
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estimation}
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
