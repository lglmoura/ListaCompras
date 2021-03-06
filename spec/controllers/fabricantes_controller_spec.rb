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

describe FabricantesController do

  # This should return the minimal set of attributes required to create a valid
  # Fabricante. As you add validations to Fabricante, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nome" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FabricantesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fabricantes as @fabricantes" do
      fabricante = Fabricante.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fabricantes).should eq([fabricante])
    end
  end

  describe "GET show" do
    it "assigns the requested fabricante as @fabricante" do
      fabricante = Fabricante.create! valid_attributes
      get :show, {:id => fabricante.to_param}, valid_session
      assigns(:fabricante).should eq(fabricante)
    end
  end

  describe "GET new" do
    it "assigns a new fabricante as @fabricante" do
      get :new, {}, valid_session
      assigns(:fabricante).should be_a_new(Fabricante)
    end
  end

  describe "GET edit" do
    it "assigns the requested fabricante as @fabricante" do
      fabricante = Fabricante.create! valid_attributes
      get :edit, {:id => fabricante.to_param}, valid_session
      assigns(:fabricante).should eq(fabricante)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Fabricante" do
        expect {
          post :create, {:fabricante => valid_attributes}, valid_session
        }.to change(Fabricante, :count).by(1)
      end

      it "assigns a newly created fabricante as @fabricante" do
        post :create, {:fabricante => valid_attributes}, valid_session
        assigns(:fabricante).should be_a(Fabricante)
        assigns(:fabricante).should be_persisted
      end

      it "redirects to the created fabricante" do
        post :create, {:fabricante => valid_attributes}, valid_session
        response.should redirect_to(Fabricante.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved fabricante as @fabricante" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fabricante.any_instance.stub(:save).and_return(false)
        post :create, {:fabricante => { "nome" => "invalid value" }}, valid_session
        assigns(:fabricante).should be_a_new(Fabricante)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Fabricante.any_instance.stub(:save).and_return(false)
        post :create, {:fabricante => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested fabricante" do
        fabricante = Fabricante.create! valid_attributes
        # Assuming there are no other fabricantes in the database, this
        # specifies that the Fabricante created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Fabricante.any_instance.should_receive(:update).with({ "nome" => "MyString" })
        put :update, {:id => fabricante.to_param, :fabricante => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested fabricante as @fabricante" do
        fabricante = Fabricante.create! valid_attributes
        put :update, {:id => fabricante.to_param, :fabricante => valid_attributes}, valid_session
        assigns(:fabricante).should eq(fabricante)
      end

      it "redirects to the fabricante" do
        fabricante = Fabricante.create! valid_attributes
        put :update, {:id => fabricante.to_param, :fabricante => valid_attributes}, valid_session
        response.should redirect_to(fabricante)
      end
    end

    describe "with invalid params" do
      it "assigns the fabricante as @fabricante" do
        fabricante = Fabricante.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fabricante.any_instance.stub(:save).and_return(false)
        put :update, {:id => fabricante.to_param, :fabricante => { "nome" => "invalid value" }}, valid_session
        assigns(:fabricante).should eq(fabricante)
      end

      it "re-renders the 'edit' template" do
        fabricante = Fabricante.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Fabricante.any_instance.stub(:save).and_return(false)
        put :update, {:id => fabricante.to_param, :fabricante => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested fabricante" do
      fabricante = Fabricante.create! valid_attributes
      expect {
        delete :destroy, {:id => fabricante.to_param}, valid_session
      }.to change(Fabricante, :count).by(-1)
    end

    it "redirects to the fabricantes list" do
      fabricante = Fabricante.create! valid_attributes
      delete :destroy, {:id => fabricante.to_param}, valid_session
      response.should redirect_to(fabricantes_url)
    end
  end

end
