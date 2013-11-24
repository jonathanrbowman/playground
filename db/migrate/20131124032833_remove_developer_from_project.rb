class RemoveDeveloperFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :developer, :string
  end
end
