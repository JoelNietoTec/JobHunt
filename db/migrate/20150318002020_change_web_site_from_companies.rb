class ChangeWebSiteFromCompanies < ActiveRecord::Migration
  def change
    change_column :companies, :web_site, :string
  end
end
