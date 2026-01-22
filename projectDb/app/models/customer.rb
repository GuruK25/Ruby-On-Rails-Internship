class Customer < ApplicationRecord
    #work on (22/01/26)

    #validation of form in through models
    validates :email, presence: true
    validates :email, uniqueness: true

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
