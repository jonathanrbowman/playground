class RemoveCompanyFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :company, :string
  end
end
