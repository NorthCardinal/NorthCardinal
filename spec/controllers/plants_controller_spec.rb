require 'rails_helper'

RSpec.describe PlantsController, type: :controller do

  describe "GET #index" do
    before { @plants = FactoryGirl.create_list(:plant, 10) }
    it "assigns all plants as @plants" do
      get :index
      expect(assigns(:plants)).to eq(@plants)
    end
  end

  describe "GET #show" do
    before { @plant = FactoryGirl.create(:plant) }
    it "assigns the requested plant as @plant" do
      get :show, { id: @plant.to_param }
      expect(assigns(:plant)).to eq(@plant)
    end
  end

  describe "GET #new" do
    it "assigns a new plant as @plant" do
      get :new
      expect(assigns(:plant)).to be_a_new(Plant)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      let(:valid_params) {{ plant: FactoryGirl.build(:plant).attributes }}

      it "creates a new Plant" do
        expect {
          post :create, valid_params
        }.to change(Plant, :count).by(1)
      end

      it "assigns a newly created plant as @plant" do
        post :create, valid_params
        expect(assigns(:plant)).to be_a(Plant)
        expect(assigns(:plant)).to be_persisted
      end

      it "redirects to the created plant" do
        post :create, valid_params
        expect(response).to redirect_to(Plant.last)
      end
    end

    context "with invalid params" do
      let(:invalid_params) {{ plant: { name: 'Plant', description: '' } }}

      it "assigns a newly created but unsaved plant as @plant" do
        post :create, invalid_params
        expect(assigns(:plant)).to be_a_new(Plant)
      end

      it "re-renders the 'new' template" do
        post :create, invalid_params
        expect(response).to render_template("new")
      end
    end
  end

end
