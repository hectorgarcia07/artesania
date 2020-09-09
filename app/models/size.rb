class Size < ApplicationRecord
    has_many :color_by_sizes
    has_many :products, through: :color_by_sizes
end