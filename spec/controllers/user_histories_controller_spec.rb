require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe UserHistoriesController do

  # This should return the minimal set of attributes required to create a valid
  # UserHistory. As you add validations to UserHistory, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UserHistoriesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all user_histories as @user_histories" do
      user_history = UserHistory.create! valid_attributes
      get :index, {}, valid_session
      assigns(:user_histories).should eq([user_history])
    end
  end

  describe "GET show" do
    it "assigns the requested user_history as @user_history" do
      user_history = UserHistory.create! valid_attributes
      get :show, {:id => user_history.to_param}, valid_session
      assigns(:user_history).should eq(user_history)
    end
  end

  describe "GET new" do
    it "assigns a new user_history as @user_history" do
      get :new, {}, valid_session
      assigns(:user_history).should be_a_new(UserHistory)
    end
  end

  describe "GET edit" do
    it "assigns the requested user_history as @user_history" do
      user_history = UserHistory.create! valid_attributes
      get :edit, {:id => user_history.to_param}, valid_session
      assigns(:user_history).should eq(user_history)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new UserHistory" do
        expect {
          post :create, {:user_history => valid_attributes}, valid_session
        }.to change(UserHistory, :count).by(1)
      end

      it "assigns a newly created user_history as @user_history" do
        post :create, {:user_history => valid_attributes}, valid_session
        assigns(:user_history).should be_a(UserHistory)
        assigns(:user_history).should be_persisted
      end

      it "redirects to the created user_history" do
        post :create, {:user_history => valid_attributes}, valid_session
        response.should redirect_to(UserHistory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user_history as @user_history" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserHistory.any_instance.stub(:save).and_return(false)
        post :create, {:user_history => {}}, valid_session
        assigns(:user_history).should be_a_new(UserHistory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        UserHistory.any_instance.stub(:save).and_return(false)
        post :create, {:user_history => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested user_history" do
        user_history = UserHistory.create! valid_attributes
        # Assuming there are no other user_histories in the database, this
        # specifies that the UserHistory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        UserHistory.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => user_history.to_param, :user_history => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested user_history as @user_history" do
        user_history = UserHistory.create! valid_attributes
        put :update, {:id => user_history.to_param, :user_history => valid_attributes}, valid_session
        assigns(:user_history).should eq(user_history)
      end

      it "redirects to the user_history" do
        user_history = UserHistory.create! valid_attributes
        put :update, {:id => user_history.to_param, :user_history => valid_attributes}, valid_session
        response.should redirect_to(user_history)
      end
    end

    describe "with invalid params" do
      it "assigns the user_history as @user_history" do
        user_history = UserHistory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserHistory.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_history.to_param, :user_history => {}}, valid_session
        assigns(:user_history).should eq(user_history)
      end

      it "re-renders the 'edit' template" do
        user_history = UserHistory.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        UserHistory.any_instance.stub(:save).and_return(false)
        put :update, {:id => user_history.to_param, :user_history => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested user_history" do
      user_history = UserHistory.create! valid_attributes
      expect {
        delete :destroy, {:id => user_history.to_param}, valid_session
      }.to change(UserHistory, :count).by(-1)
    end

    it "redirects to the user_histories list" do
      user_history = UserHistory.create! valid_attributes
      delete :destroy, {:id => user_history.to_param}, valid_session
      response.should redirect_to(user_histories_url)
    end
  end

end
