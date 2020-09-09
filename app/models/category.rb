class Category < ApplicationRecord
    belongs_to :product
    
    validates :product_id, presence: true
    validates :productType, presence: true, length: { maximum: 50, minimum: 1 }
end
