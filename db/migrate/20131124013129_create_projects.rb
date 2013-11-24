class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :developer
      t.integer :price
      t.string :category
      t.text :description

      t.timestamps
    end
    add_index :projects, :title, unique: true
    add_index :projects, :developer, unique: true
  end
end
