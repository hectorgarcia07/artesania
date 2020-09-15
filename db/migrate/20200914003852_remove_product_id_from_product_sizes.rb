class RemoveProductIdFromProductSizes < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_sizes, :product_id
    
  end
end
