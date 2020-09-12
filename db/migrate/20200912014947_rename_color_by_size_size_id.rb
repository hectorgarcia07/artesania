class RenameColorBySizeSizeId < ActiveRecord::Migration[5.2]
  def change
    rename_column :color_by_sizes, :size_id, :product_size_id
  end
end
