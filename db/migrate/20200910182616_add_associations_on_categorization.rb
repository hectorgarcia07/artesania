class AddAssociationsOnCategorization < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :product_id
    add_column :categorizations, :product_id, :integer
    add_column :categorizations, :category_id, :integer

    add_index :categorizations, :category_id
    add_index :categorizations, :product_id
  end
end
