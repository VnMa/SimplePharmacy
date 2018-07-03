class CustomersController < ApplicationController
  def index
    @customers = Customer.first(20)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.create(params)
  end

  def destroy
  end


  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find params[:id]
    res = @customer.update customer_params
    if res
      flash.now[:notice] = "You have updated customer successfully"
      redirect_to customers_path
      # render 'index'
    end
  end

  private 
  def customer_params
    params.require(:customer).permit(:name, :id_card, :dob, :pob, :phone_number, :address, :email, :gender, :description)
  end
end
