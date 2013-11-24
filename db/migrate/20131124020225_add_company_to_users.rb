class AddCompanyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company, :string
    add_index :users, :company, unique: true
  end
end
