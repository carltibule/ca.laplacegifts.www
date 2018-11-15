class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private 
    def customer_params
      params.require(:customer).permit(:first_name, :middle_name, :last_name, :first_address_line, :second_address_line,
        :city, :province, :postal_code, :phone_number, :cell_number, :email_address, :password)
    end
end
