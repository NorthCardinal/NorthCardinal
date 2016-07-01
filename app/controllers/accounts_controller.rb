class AccountsController < ApplicationController

  # GET /accounts
  def index
    instance_variable_set(:"@#{controller_name}", controller_name.classify.constantize.all)
  end

  # GET /accounts/:id
  def show
    instance_variable_set(:"@#{controller_name.singularize}", controller_name.classify.constantize.find(params[:id]))
  end

  # GET /accounts/new
  def new
    instance_variable_set(:"@#{controller_name.singularize}", controller_name.classify.constantize.new)
  end

  # POST /accounts
  # POST /accounts.json
  def create
    instance_variable_set(:"@#{controller_name.singularize}", controller_name.classify.constantize.new(account_params))

    respond_to do |format|
      if account.save
        format.html { redirect_to account, notice: "#{controller_name.singularize.humanize} was successfully created." }
        format.json { render :show, status: :created, location: account }
      else
        format.html { render :new }
        format.json { render json: account.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def account
      instance_variable_get(:"@#{controller_name.singularize}")
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(controller_name.singularize.to_sym).permit(:name, :description)
    end

end
