class HarvestsController < ApplicationController
  def new
    @harvest = Harvest.new
  end

  def create
    @harvest = Harvest.new(harvest_params)

    respond_to do |format|
      if @harvest.save
        format.html { redirect_to @harvest, notice: 'Harvest was successfully created.' }
        format.json { render :show, status: :created, location: @harvest }
      else
        format.html { render :new }
        format.json { render json: @harvest.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def harvest_params
    params.require(:harvest).permit(:debitor_account_id, :creditor_account_id, :amount, :description)
  end

end
