class AddCategoryIdToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :references, :category
  end
end
