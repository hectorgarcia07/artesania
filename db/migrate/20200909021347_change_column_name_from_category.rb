class ChangeColumnNameFromCategory < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :type, :productType
  end
end
