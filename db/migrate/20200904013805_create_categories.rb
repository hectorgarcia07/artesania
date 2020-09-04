class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :product_id
      t.string :type

      t.timestamps
    end
  end
end
