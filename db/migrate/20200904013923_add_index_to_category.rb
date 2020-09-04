class AddIndexToCategory < ActiveRecord::Migration[5.2]
  def change
    add_index :categories, :product_id
    add_index :categories, :type
  end
end
