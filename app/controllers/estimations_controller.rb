class EstimationsController < ApplicationController
 def index
    @estimations = Estimation.all
    # @sec_id = ParamSection.where(name: "complexity")
    # @params = Parameter.where(:param_section_id => { "$in" => @sec_id})
    
    @parameters = Parameter.where("param_section.name" => "metric")
    # @parameters = Parameter.all
    
    # workout_ids = Workout.where(:user_id => current_user.id ).all.collect { |w| w.id }
    # exercises = Exercise.where(:workout_id => { "$in" => workout_ids })

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end
  
  def getNewMetricParam(name)
      metric_weight = MetricWeight.where(:name => name)
      return metric_weight.weight      
  end
  
  def show
  end

  def new
    @estimation = Estimation.new
    
    @metric_weights = MetricWeight.all
    
    # 2.times {@estimation.metric_parameters.new}
    
    @metric_weights.each do |m|
       @estimation.metric_parameters.new(name: m.name, description: m.description, weight: m.weight)
    end
        
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estimation}
    end
  end
  
  def constructMetricParameters(estimation)
    metric_weights = MetricWeight.all
    
    metric_weights.each do |m|
       estimation.metric_parameters.build(name: m.name, description: m.description, weight: m.weight)
    end
    
    return estimation
  end
  
  def edit
  end

  def create
    @estimation = Estimation.new(params[:estimation])
	
    respond_to do |format|
      if @estimation.save
        format.html { redirect_to(@estimation, notice: 'Project was successfully created.') }
        format.json { render json: @estimation, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @estimation.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  end

  def destroy
  end
end
