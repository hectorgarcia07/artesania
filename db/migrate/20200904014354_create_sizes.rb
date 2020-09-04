class CreateSizes < ActiveRecord::Migration[5.2]
  def change
    create_table :sizes do |t|
      t.string :US
      t.string :MX
      t.integer :quantity
      t.integer :product_id

      t.timestamps
    end
  end
end
