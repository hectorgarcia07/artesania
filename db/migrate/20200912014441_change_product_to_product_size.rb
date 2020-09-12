class ChangeProductToProductSize < ActiveRecord::Migration[5.2]
  def change
      rename_table :sizes, :product_sizes
  end
end
