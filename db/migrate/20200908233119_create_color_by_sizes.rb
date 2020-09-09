class CreateColorBySizes < ActiveRecord::Migration[5.2]
  def change
    create_table :color_by_sizes do |t|
      t.integer :product_id
      t.integer :size_id
      t.string :color

      t.timestamps
    end
    add_index :color_by_sizes, :product_id
    add_index :color_by_sizes, :size_id
    add_index :color_by_sizes, :color
  end
end
