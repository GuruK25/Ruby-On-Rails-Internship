class CustomerMailer < ApplicationMailer
    def welcome_email
        @customer = params[:customer]  # Recieves all the customer data from the params which is passing to controller.
        
        mail(to: @customer.email,
            subject: "Welcome to the application customer"
            )
    end
end
