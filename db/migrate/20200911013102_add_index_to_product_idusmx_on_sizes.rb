class AddIndexToProductIdusmxOnSizes < ActiveRecord::Migration[5.2]
  def change
    add_index :products, [:product_id, :MX, :US], unique: true
  end
end
