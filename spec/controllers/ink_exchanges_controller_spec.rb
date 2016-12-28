require 'rails_helper'

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

RSpec.describe InkExchangesController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # InkExchange. As you add validations to InkExchange, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InkExchangesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all ink_exchanges as @ink_exchanges" do
      ink_exchange = InkExchange.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:ink_exchanges)).to eq([ink_exchange])
    end
  end

  describe "GET show" do
    it "assigns the requested ink_exchange as @ink_exchange" do
      ink_exchange = InkExchange.create! valid_attributes
      get :show, {:id => ink_exchange.to_param}, valid_session
      expect(assigns(:ink_exchange)).to eq(ink_exchange)
    end
  end

  describe "GET new" do
    it "assigns a new ink_exchange as @ink_exchange" do
      get :new, {}, valid_session
      expect(assigns(:ink_exchange)).to be_a_new(InkExchange)
    end
  end

  describe "GET edit" do
    it "assigns the requested ink_exchange as @ink_exchange" do
      ink_exchange = InkExchange.create! valid_attributes
      get :edit, {:id => ink_exchange.to_param}, valid_session
      expect(assigns(:ink_exchange)).to eq(ink_exchange)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new InkExchange" do
        expect {
          post :create, {:ink_exchange => valid_attributes}, valid_session
        }.to change(InkExchange, :count).by(1)
      end

      it "assigns a newly created ink_exchange as @ink_exchange" do
        post :create, {:ink_exchange => valid_attributes}, valid_session
        expect(assigns(:ink_exchange)).to be_a(InkExchange)
        expect(assigns(:ink_exchange)).to be_persisted
      end

      it "redirects to the created ink_exchange" do
        post :create, {:ink_exchange => valid_attributes}, valid_session
        expect(response).to redirect_to(InkExchange.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ink_exchange as @ink_exchange" do
        post :create, {:ink_exchange => invalid_attributes}, valid_session
        expect(assigns(:ink_exchange)).to be_a_new(InkExchange)
      end

      it "re-renders the 'new' template" do
        post :create, {:ink_exchange => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested ink_exchange" do
        ink_exchange = InkExchange.create! valid_attributes
        put :update, {:id => ink_exchange.to_param, :ink_exchange => new_attributes}, valid_session
        ink_exchange.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested ink_exchange as @ink_exchange" do
        ink_exchange = InkExchange.create! valid_attributes
        put :update, {:id => ink_exchange.to_param, :ink_exchange => valid_attributes}, valid_session
        expect(assigns(:ink_exchange)).to eq(ink_exchange)
      end

      it "redirects to the ink_exchange" do
        ink_exchange = InkExchange.create! valid_attributes
        put :update, {:id => ink_exchange.to_param, :ink_exchange => valid_attributes}, valid_session
        expect(response).to redirect_to(ink_exchange)
      end
    end

    describe "with invalid params" do
      it "assigns the ink_exchange as @ink_exchange" do
        ink_exchange = InkExchange.create! valid_attributes
        put :update, {:id => ink_exchange.to_param, :ink_exchange => invalid_attributes}, valid_session
        expect(assigns(:ink_exchange)).to eq(ink_exchange)
      end

      it "re-renders the 'edit' template" do
        ink_exchange = InkExchange.create! valid_attributes
        put :update, {:id => ink_exchange.to_param, :ink_exchange => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ink_exchange" do
      ink_exchange = InkExchange.create! valid_attributes
      expect {
        delete :destroy, {:id => ink_exchange.to_param}, valid_session
      }.to change(InkExchange, :count).by(-1)
    end

    it "redirects to the ink_exchanges list" do
      ink_exchange = InkExchange.create! valid_attributes
      delete :destroy, {:id => ink_exchange.to_param}, valid_session
      expect(response).to redirect_to(ink_exchanges_url)
    end
  end

end
