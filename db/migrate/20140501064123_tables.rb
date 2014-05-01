class Tables < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :summary
      t.integer :tool_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end

    create_table :tools do |t|
      t.string :name
      t.string :summary
      t.string :url
      t.integer :user_id

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
