class AddIndexOnProduct < ActiveRecord::Migration[5.2]
  def change
    add_index :products, :gender
    add_index :products, :age
    add_index :products, :color
    add_index :products, :price
  end
end
