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
    @atrapado = params
  end

  def new
    @estimation = Estimation.new

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
    @estimation = Estimation.find(params[:id])
    
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

  def test
    @pars = Parameter.where(name: "assoc_business_logic")
    @ops  = Parameter.where(name: "assoc_business_logic").map { |par| [par.label, par.id] }

    @atrapado = params[:assoc_business_logic]

  end

  def gettest
    @atrapado = params[:assoc_business_logic]
  end

end
