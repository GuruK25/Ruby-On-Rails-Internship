class User < ApplicationRecord
    has_one :vendor, dependent: :destroy  #(if it is has_one then passed vendor should be singular)
                                            #(if it is has_many then passed vendor should be plural)
end
 