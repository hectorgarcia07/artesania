class Category < ApplicationRecord
    has_many :categorizations
    has_many :products, through: :categorizations
    
    validates :productType, presence: true, length: { maximum: 50, minimum: 1 },
                                            uniqueness: true
end
