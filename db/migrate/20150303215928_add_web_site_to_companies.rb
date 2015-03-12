class AddWebSiteToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :web_site, :integer
  end
end
