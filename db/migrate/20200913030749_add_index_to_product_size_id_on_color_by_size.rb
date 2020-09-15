class AddIndexToProductSizeIdOnColorBySize < ActiveRecord::Migration[5.2]
  def change
    remove_index :color_by_sizes, :product_size_id
    add_index :color_by_sizes, :product_size_id, unique: true
  end
end
