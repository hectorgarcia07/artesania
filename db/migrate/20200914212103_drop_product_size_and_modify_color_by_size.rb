class DropProductSizeAndModifyColorBySize < ActiveRecord::Migration[5.2]
  def change
    drop_table :product_sizes
    remove_column :color_by_sizes, :product_size_id
    
    add_column :color_by_sizes, :MX, :string
    add_column :color_by_sizes, :US, :string
    add_column :color_by_sizes, :quantity, :integer
    
    add_index :color_by_sizes, :MX
    add_index :color_by_sizes, :US
    add_index :color_by_sizes, :quantity
    add_index :color_by_sizes, [:product_id, :MX, :US], unique: true

  end
end
