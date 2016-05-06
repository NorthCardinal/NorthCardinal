class PlantsController < ApplicationController
  before_action :set_plant, only: [ :show, :edit ]

  def index
    @plants = Plant.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
end
