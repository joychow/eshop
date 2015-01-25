class Backend::ProductsController < Backend::BaseController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  # GET /backend/products
  def index
    @products = current_partner.products 
    respond_with(@products)    
  end

  # GET /backend/products/1
  def show
    respond_with(@product)
  end

  # GET /products/new
  def new
    @product = current_partner.products.new
    respond_with(@product)
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_partner.products.new(product_params)
    @product.save
    respond_with(@product)
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @product.update(product_params)
    respond_with(@product)
  end
  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_with(@product)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = current_partner.products.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params[:product]
    end
end
