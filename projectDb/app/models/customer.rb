class Customer < ApplicationRecord
    #work on (22/01/26)

    #validation of form in through models
    # validates :email, presence: true
    # validates :email, uniqueness: true

    # 23/01/26
    #Non-parameterised scopes
    # scope :unique_email, -> {where(email: "div@gmail.com").pluck(:email)}
                                   #tableColumn: modelAttribute/Values

    #Parameterised scopes
    scope :blacklisted_customers, ->(customer_ids) { where(id: customer_ids) }
    
    # Assignment by mam (21/01/26)

    # check whether email is present or not
    def check_email
        #logic
        if email == nil
            puts "email is not present"
        else
            puts "email is present"
        end
    end

    #check whether name is present or not
    def name_check
        #logic

        if name == nil
            puts "name is not present"
        else
            puts "name is present"
        end
    
    end
end
