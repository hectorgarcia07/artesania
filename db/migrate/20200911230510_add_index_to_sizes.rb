class AddIndexToSizes < ActiveRecord::Migration[5.2]
  def change
    add_index :sizes, [:product_id, :MX, :US], unique: true
  end
end
