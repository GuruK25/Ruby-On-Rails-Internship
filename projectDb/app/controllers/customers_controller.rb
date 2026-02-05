class CustomersController < ApplicationController
  before_action :set_customer, only: %i[ show edit update destroy ]

  # GET /customers or /customers.json
  def index
    # list_of_customers = [1,2,3]
    # @customers = Customer.blacklisted_customers(list_of_customers) #Customer.all

    @customers = Customer.all 
    # raise params.inspect  This method will not take any parameters.

    # @customers = Customer.find(3)
    # @customers = Customer.find_by(id: 3)
    # @customers = Customer.where(id: 3)
    
    # rails @customers.inspect
  end

  # GET /customers/1 or /customers/1.json
  def show
    # raise params.inspect  This method takes id parameter. {"id" => "1"}
    # @customers = Customer.find(params[:id])
  end

  # GET /customers/new
  def new
    @customer = Customer.new
    # raise params.inspect    No parameters.
  end

  # GET /customers/1/edit
  def edit
    # raise params.inspect  It takes parameters=> {"id" => "1"}
  end

  # POST /customers or /customers.json
  def create

    # raise params.inspect    It takes all parameters like id, name, email, about_me.

    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save

        # ActionMailer
        CustomerMailer.with(customer: @customer).welcome_email.deliver 

        format.html { redirect_to @customer, notice: "Customer was successfully created." }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1 or /customers/1.json
  def update
    # raise params.inspect       {"_method" => "patch", "authenticity_token" => "[FILTERED]", "customer" => {"name" => "guru", "email" => "[FILTERED]", "about_me" => "<div>a</div>"}, "commit" => "Update Customer", "id" => "1"}

    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: "Customer was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1 or /customers/1.json
  def destroy

    # raise params.inspect      {"_method" => "delete", "authenticity_token" => "[FILTERED]", "id" => "1"}

    @customer.destroy!

    respond_to do |format|
      format.html { redirect_to customers_path, notice: "Customer was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  # Creating new route with path ..../customers/blacklisted_customers. 
  def blacklisted_customers
    customer_ids = [1,2,5]
    # @customers = Customer.blacklisted_customers([1,2])
    @customers = Customer.blacklisted_customers(customer_ids)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.expect(customer: [ :name, :email, :about_me, :profile_picture ]) # This is strong parameter.
                                                          # whitelisting profile_picture column
    end
end
