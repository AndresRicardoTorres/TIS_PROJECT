class EstimationsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @project = Project.find(params[:project_id])
    @user_history = @project.user_histories.find(params[:user_history_id])
    @estimations = @user_history.estimation
    #@estimations = Estimation.all
    # @sec_id = ParamSection.where(name: "complexity")
    # @params = Parameter.where(:param_section_id => { "$in" => @sec_id})

    @parameters = Parameter.where("param_section.name" => "metric")
    # @parameters = Parameter.all

    # workout_ids = Workout.where(:user_id => current_user.id ).all.collect { |w| w.id }
    # exercises = Exercise.where(:workout_id => { "$in" => workout_ids })

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_history }
    end
  end

  def getNewMetricParam(name)
    metric_weight = MetricWeight.where(:name => name)
    return metric_weight.weight
  end

  def show
    #@project = Project.find(params[:project_id])
    #@user_history = @project.user_histories.find(params[:user_history_id])
    #@estimation = @user_history.estimation.find(params[:id])
    @atrapado = params
  end

  def new
    @project = Project.find(params[:project_id])
    @user_history = UserHistory.find(params[:user_history_id])
    @estimation = @user_history.build_estimation
    #@estimation = Estimation.new

    @metric_weights = MetricWeight.all

    @metric_weights.each do |m|
      @estimation.metric_parameters.new(name: m.name, description: m.description, weight: m.weight, optimistic_value: 0,probable_value: 0,pessimistic_value: 0,value: 0,quantity: 0)
    end

    @bus_logic = BusinessLogicAssociatedParameter.all
    @code_gen_help  = CodeGenHelpParameter.all
    @developer_exp  = DevExpParameter.all

    @view_type_master = ViewTypeParameter.where(name: "master")
    @view_type_master_detail = ViewTypeParameter.where(name: "master_detail")
    @view_type_process = ViewTypeParameter.where(name: "process")
    @view_type_graphics_interactive = ViewTypeParameter.where(name: "graphics_interactive")
    @view_type_basic_report = ViewTypeParameter.where(name: "basic_report")
    @view_type_graphic_report = ViewTypeParameter.where(name: "graphic_report")
    @view_type_mixed_report = ViewTypeParameter.where(name: "mixed_report")
    @view_type_na = ViewTypeParameter.where(name: "na")

    @view_types = {'Maestro'=>@view_type_master,"Maestro - Detalle"=>@view_type_master_detail,"Proceso"=>@view_type_process,"Interactiva grafica (activeX, applet)"=>@view_type_graphics_interactive,"Reporte basico"=>@view_type_basic_report,"Reporte grafico"=>@view_type_graphic_report,"Reporte mixto"=>@view_type_mixed_report,"No Aplica"=>@view_type_na}

  #respond_to do |format|
  #  format.html # new.html.erb
  #  format.json { render json: @estimation}
  #end
  end

  def constructMetricParameters(estimation)
    metric_weights = MetricWeight.all

    metric_weights.each do |m|
      estimation.metric_parameters.build(name: m.name, description: m.description, weight: m.weight)
    end

    return estimation
  end

  def edit
    @project = Project.find(params[:project_id])
    @user_history = UserHistory.find(params[:user_history_id])
   
    #Como una historia de usuario tiene solo una estimacion, entonces es la de la historia cargada
    @estimation = @user_history.estimation
    #@estimation = Estimation.find(params[:id])

    @bus_logic = BusinessLogicAssociatedParameter.all
    @code_gen_help  = CodeGenHelpParameter.all
    @developer_exp  = DevExpParameter.all

    @view_type_master = ViewTypeParameter.where(name: "master")
    @view_type_master_detail = ViewTypeParameter.where(name: "master_detail")
    @view_type_process = ViewTypeParameter.where(name: "process")
    @view_type_graphics_interactive = ViewTypeParameter.where(name: "graphics_interactive")
    @view_type_basic_report = ViewTypeParameter.where(name: "basic_report")
    @view_type_graphic_report = ViewTypeParameter.where(name: "graphic_report")
    @view_type_mixed_report = ViewTypeParameter.where(name: "mixed_report")
    @view_type_na = ViewTypeParameter.where(name: "na")

    @view_types = {'Maestro'=>@view_type_master,"Maestro - Detalle"=>@view_type_master_detail,"Proceso"=>@view_type_process,"Interactiva grafica (activeX, applet)"=>@view_type_graphics_interactive,"Reporte basico"=>@view_type_basic_report,"Reporte grafico"=>@view_type_graphic_report,"Reporte mixto"=>@view_type_mixed_report,"No Aplica"=>@view_type_na}

  end

  def create
    @project = Project.find(params[:project_id])
    @user_history = @project.user_histories.find(params[:user_history_id])
    @estimation = @user_history.build_estimation(params[:estimation])
    #@estimation = Estimation.new(params[:estimation])

    if @estimation.save
      redirect_to project_user_history_estimation_url(@project, @user_history, @estimation)
    #format.html { redirect_to(@estimation, notice: 'Project was successfully created.') }
    #format.json { render json: @estimation, status: :created, location: @project }
    else
      respond_to do |format|
        render :action => 'new'
      end
    #format.html { render action: "new" }
    #format.json { render json: @estimation.errors, status: :unprocessable_entity }
    end

  end

  def update
  end

  def destroy
  end

  def test
    @pars = Parameter.where(name: "assoc_business_logic")
    @ops  = Parameter.where(name: "assoc_business_logic").map { |par| [par.label, par.id] }

    @atrapado = params[:assoc_business_logic]

  end

  def gettest
    @atrapado = params[:assoc_business_logic]
  end

end
