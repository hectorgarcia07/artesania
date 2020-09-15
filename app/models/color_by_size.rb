class ColorBySize < ApplicationRecord
    belongs_to :product

    validates :product_id, presence: :true
    validates :color, presence: :true, length: { maximum: 50, minimum: 1 }
    validates :MX, presence: :true, length: { maximum: 10, minimum: 1 }
    validates :US, presence: :true, length: { maximum: 10, minimum: 1 }
end
