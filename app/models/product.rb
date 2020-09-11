class Product < ApplicationRecord
    has_many :color_by_sizes
    has_many :sizes, through: :color_by_sizes

    has_many :categorizations
    has_many :categories, through: :categorizations

    validates :description, presence: :true, length: { maximum: 500, minimum: 1 }
    validates :name, presence: :true, length: { maximum: 100, minimum: 1 },
                                        uniqueness: true
    validates :gender, presence: :true, length: { maximum: 30, minimum: 1 }
    validates :age, presence: :true, length: { maximum: 30, minimum: 1 }
    validates :price, presence: :true
    
end
