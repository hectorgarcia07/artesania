class Product < ApplicationRecord
    has_many :color_by_sizes
    has_many :sizes, through: :color_by_sizes
    has_many :categories

    has_many_attached :image
end
