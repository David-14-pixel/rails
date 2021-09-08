class CustomersController < ApplicationController
	before_action :set_customer, only: %i[ show edit update destroy ]
  def index
    @customers=Customer.all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "clientes: #{@customers.count}", template: "customers/index.html.erb", layout: 'pdf'   # Excluding ".pdf" extension.
      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "clientes id: #{@customer.id}", template: "customers/customer.html.erb", layout: 'pdf'   # Excluding ".pdf" extension.
      end
    end
  end

  def new
    @customer=Customer.new
  end

  def create
    @customer=Customer.new(customer_params)

    if @customer.save
      redirect_to @customer, notice: "El cliente fue creado con éxito"
    else
     render :new
    end
  end

  def edit
  end

  def update
    if @customer.update(customer_params)
     redirect_to @customer, notice: "Cliente fue actualizado con éxito" 
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to customers_url, notice: "El cliente fue eliminado con éxito"
  end

  private 
  def set_customer
    @customer=Customer.find(params[:id])
  end
  
  def customer_params
    params.require(:customer).permit(:name, :last_name, :telephone, :address, :state)
  end
end
