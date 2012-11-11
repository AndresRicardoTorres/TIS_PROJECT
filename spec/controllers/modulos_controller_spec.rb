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

describe ModulosController do

  # This should return the minimal set of attributes required to create a valid
  # Modulo. As you add validations to Modulo, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ModulosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all modulos as @modulos" do
      modulo = Modulo.create! valid_attributes
      get :index, {}, valid_session
      assigns(:modulos).should eq([modulo])
    end
  end

  describe "GET show" do
    it "assigns the requested modulo as @modulo" do
      modulo = Modulo.create! valid_attributes
      get :show, {:id => modulo.to_param}, valid_session
      assigns(:modulo).should eq(modulo)
    end
  end

  describe "GET new" do
    it "assigns a new modulo as @modulo" do
      get :new, {}, valid_session
      assigns(:modulo).should be_a_new(Modulo)
    end
  end

  describe "GET edit" do
    it "assigns the requested modulo as @modulo" do
      modulo = Modulo.create! valid_attributes
      get :edit, {:id => modulo.to_param}, valid_session
      assigns(:modulo).should eq(modulo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Modulo" do
        expect {
          post :create, {:modulo => valid_attributes}, valid_session
        }.to change(Modulo, :count).by(1)
      end

      it "assigns a newly created modulo as @modulo" do
        post :create, {:modulo => valid_attributes}, valid_session
        assigns(:modulo).should be_a(Modulo)
        assigns(:modulo).should be_persisted
      end

      it "redirects to the created modulo" do
        post :create, {:modulo => valid_attributes}, valid_session
        response.should redirect_to(Modulo.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved modulo as @modulo" do
        # Trigger the behavior that occurs when invalid params are submitted
        Modulo.any_instance.stub(:save).and_return(false)
        post :create, {:modulo => {}}, valid_session
        assigns(:modulo).should be_a_new(Modulo)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Modulo.any_instance.stub(:save).and_return(false)
        post :create, {:modulo => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested modulo" do
        modulo = Modulo.create! valid_attributes
        # Assuming there are no other modulos in the database, this
        # specifies that the Modulo created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Modulo.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => modulo.to_param, :modulo => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested modulo as @modulo" do
        modulo = Modulo.create! valid_attributes
        put :update, {:id => modulo.to_param, :modulo => valid_attributes}, valid_session
        assigns(:modulo).should eq(modulo)
      end

      it "redirects to the modulo" do
        modulo = Modulo.create! valid_attributes
        put :update, {:id => modulo.to_param, :modulo => valid_attributes}, valid_session
        response.should redirect_to(modulo)
      end
    end

    describe "with invalid params" do
      it "assigns the modulo as @modulo" do
        modulo = Modulo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Modulo.any_instance.stub(:save).and_return(false)
        put :update, {:id => modulo.to_param, :modulo => {}}, valid_session
        assigns(:modulo).should eq(modulo)
      end

      it "re-renders the 'edit' template" do
        modulo = Modulo.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Modulo.any_instance.stub(:save).and_return(false)
        put :update, {:id => modulo.to_param, :modulo => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested modulo" do
      modulo = Modulo.create! valid_attributes
      expect {
        delete :destroy, {:id => modulo.to_param}, valid_session
      }.to change(Modulo, :count).by(-1)
    end

    it "redirects to the modulos list" do
      modulo = Modulo.create! valid_attributes
      delete :destroy, {:id => modulo.to_param}, valid_session
      response.should redirect_to(modulos_url)
    end
  end

end
