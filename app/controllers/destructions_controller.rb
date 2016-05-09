class DestructionsController < ApplicationController

  def new
    @destruction = Destruction.new
  end

  def create
    @destruction = Destruction.new(destruction_params)

    respond_to do |format|
      if @destruction.save
        format.html { redirect_to @destruction, notice: 'Destruction was successfully created.' }
        format.json { render :show, status: :created, location: @destruction }
      else
        format.html { render :new }
        format.json { render json: @destruction.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def destruction_params
      params.require(:destruction).permit(:debitor_account_id, :creditor_account_id, :amount, :description)
    end

end
