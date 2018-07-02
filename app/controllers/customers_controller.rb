class CustomersController < ApplicationController
  def index
    @customers = Customer.first(20)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
  end

  def destroy
  end

  def update
  end

  private 
  def customer_params
    params.require(:customer).permit(:id, :name)
  end
end
