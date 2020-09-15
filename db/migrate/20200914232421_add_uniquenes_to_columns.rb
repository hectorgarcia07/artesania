class AddUniquenesToColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :name, :string, unique: true
    change_column :categories, :productType, :string, unique: true

  end
end
