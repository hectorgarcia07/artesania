class ColorBySize < ApplicationRecord
    belongs_to :product
    belongs_to :size

    has_many_attached :images

    validates :product_id, presence: :true
    validates :size_id, presence: :true
    validates :color, presence: :true, length: { maximum: 50, minimum: 1 }

end
