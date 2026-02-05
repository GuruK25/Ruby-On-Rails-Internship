class Order < ApplicationRecord
    # has_many :products, foreign_key: product_id  # One of the way to add a reference or to establish the relationship.
    belongs_to :product
end
