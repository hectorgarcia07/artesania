class CreateProductImages < ActiveRecord::Migration[5.2]
  def change
    create_table :product_images do |t|
      t.string :color
      t.string :photo

      t.timestamps
    end
    add_index :product_images, :color
  end
end
