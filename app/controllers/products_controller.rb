class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

    def index
      @products = Product.all
    end

    def show
    end


    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)

      
        if @product.save
          redirect_to @product, notice: "Producto creado con exito." 
          
        else
          render :new
        end
      
    end


    def edit
    end

      def update
      
        if @product.update(product_params)
          redirect_to @product, notice: "Producto actualizado con exito" 
        else
          render :edit
        end
   
    end

    def destroy
      @product.destroy
      
    redirect_to products_url, notice: "Producto eliminado con exito" 
    
      end
  

    private
      
      def set_product
        @product = Product.find(params[:id])
      end

      
      def product_params
        params.require(:product).permit(:name, :description, :stock, :price, :state)
      end
  end
