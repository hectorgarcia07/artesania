class Product < ApplicationRecord
    has_many :categories
    has_many :sizes

    has_many_attached :image
end
