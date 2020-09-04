class AddAttributesToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :description, :text
    add_column :products, :name, :string
    add_column :products, :gender, :string
    add_column :products, :age, :string
    add_column :products, :price, :decimal, :precision => 8, :scale => 2
    add_column :products, :color, :string
  end
end
