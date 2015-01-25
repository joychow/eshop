class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  respond_to :html
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
    respond_with(@products)
  end

  # GET /products/1
  # GET /products/1.json
  def show
    respond_with(@product)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

end
