class UserHistoriesController < ApplicationController
  before_filter :authenticate_user!
  # GET /user_histories
  # GET /user_histories.json
  def index
    @project = Project.find(params[:project_id])
    @user_histories = @project.user_histories
    # @user_histories = UserHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_histories }
    end
  end 

  # GET /user_histories/1
  # GET /user_histories/1.json
  def show
    # @project = Project.find(params[:project_id])
    # @user_histories = @project.user_histories.find(params[:id])
    # # @user_history = UserHistory.find(params[:id])

    # respond_to do |format|
    #   format.html # show.html.erb
    #   format.json { render json: @user_history }
    # end
    
    
    @project = Project.find(params[:project_id])

    # For URL like /orders/1/items/2
    # Find an item in orders 1 that has id=2
    @user_history = @project.user_histories.find(params[:id])
  end 

  # GET /user_histories/new
  # GET /user_histories/new.json
  def new
    @project = Project.find(params[:project_id])
    @user_history = @project.user_histories.build
    # @user_history = UserHistory.new

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @user_history }
    # end
  end 

  # GET /user_histories/1/edit
   def edit
    @user_history = UserHistory.find(params[:id])
  end 

  # POST /user_histories
  # POST /user_histories.json
  def create
    @project = Project.find(params[:project_id])
    @user_history = @project.user_histories.build(params[:user_history])
    if @user_history.save 
      redirect_to project_user_history_url(@project, @user_history) #:notice => "User History created!")
    else
      render :action => 'new'
    end
    # redirect_to @project, :notice => "User History created!"
    
  end

  # PUT /user_histories/1
  # PUT /user_histories/1.json
  def update
    @user_history = UserHistory.find(params[:id])

    respond_to do |format|
      if @user_history.update_attributes(params[:user_history])
        format.html { redirect_to @user_history, notice: 'User history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_history.errors, status: :unprocessable_entity }
      end
    end
  end 

  # DELETE /user_histories/1
  # DELETE /user_histories/1.json
   def destroy
    @user_history = UserHistory.find(params[:id])
    @user_history.destroy

    respond_to do |format|
      format.html { redirect_to user_histories_url }
      format.json { head :no_content }
    end
  end 
end
