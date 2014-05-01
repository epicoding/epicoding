class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :resources, :category_id, :cat_id
  end
end
