class AddIndexToSize < ActiveRecord::Migration[5.2]
  def change
    add_index :sizes, :product_id
    add_index :sizes, :MX
    add_index :sizes, :US
  end
end
