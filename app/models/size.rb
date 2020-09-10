class Size < ApplicationRecord
    has_many :color_by_sizes
    has_many :products, through: :color_by_sizes

    validates :US, presence: :true, length: { maximum: 25, minimum: 1 }
    validates :MX, presence: :true, length: { maximum: 25, minimum: 1 }
    validates :quantity, presence: :true
    validates :product_id, presence: :true
    
end