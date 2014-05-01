class RenameCategoriesTable < ActiveRecord::Migration
  def change
    rename_table :categories, :cats
  end
end
