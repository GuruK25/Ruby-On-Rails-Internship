class ProductMailer < ApplicationMailer
    def welcome_email_product

        @product = params[:product]
        mail(to: @product.email,
            subject: "Welcome from application to product."
            )
    end

end
