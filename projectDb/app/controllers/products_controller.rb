class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index

    # raise params.inspect  This method will not take any parameters.

    @products = Product.all # to get the prodcucts with only active records limiting to 10. ==> Product.new.send_procuct
    # @products = Product.out_of_stock   # Scope function usage(to get list of products with 0 stocks)
  end

  # GET /products/1 or /products/1.json
  def show
    # raise params.inspect  This method takes id parameter. {"id" => "1"}
  end

  # Class assignment (27/01/26)
# When i comment out the show method above and run the rails project. When i hit the route products/id we are expected to not get the output. But still getting the output.
# Why ?

# Reason: When you hit the route like products/1.
# -> Rails check whether this route is defined or not.
# -> There is this route defined in routes.rb (sources :products)
# -> This route creates => GET /products/id -> product#show
# The route exists
# Rails doesnot care whether show() method is defined or commented out.
# -> Rails loads controller.
#  Rails does not fall just because show method does not exist or does not have any logic.
# There is before_action at the top of the contoller. It will execute first.
# Before rendering anything Rails runs this line.
# Which executes set_product method which is a private method and returns @products = Product.find(params.expect(:id))
# So data is available now for the view.
# Later the @products is rendered by view for the data and shows the output on the website.


# When you delete view file. Then you will get error on the browser.


  # GET /products/new
  def new

    # raise params.inspect    No parameters.

    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    # raise params.inspect  It takes parameters=> {"id" => "1"}
  end

  # POST /products or /products.json
  def create

    # raise params.inspect    It takes all parameters all its attributes.

    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy!

    respond_to do |format|
      format.html { redirect_to products_path, notice: "Product was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  # 23/01/26
  # Defining custom route method for path: ..../products/out_of_stock
  def out_of_stock
    # work flow.
    # When the path/resource is requested or hit as product.out_of_stock. out_of_stock method in product_controller invoked.
    # It again invokes out_of_stock scope/method defined in the Model product. 
    # As per the logic of out_of_stock scope in Model product. It filters all the records based on the filter condition which is stock == 0.
    # those records get stored in the @products of products_controller
    @products = Product.out_of_stock
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params.expect(:id))
    end


    # Only allow a list of trusted parameters through.
    def product_params
      params.expect(product: [ :name, :description, :price, :stock, :is_active, :details, :invoice, product_pictures:[] ])
    end


end
