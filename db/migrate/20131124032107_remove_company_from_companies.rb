class RemoveCompanyFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :company, :string
  end
end
