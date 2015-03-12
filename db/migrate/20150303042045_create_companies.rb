class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :short_name
      t.string :business_name
      t.integer :company_type_id
      t.integer :industry_id
      t.text :review
      t.integer :province_id
      t.integer :district_id
      t.integer :township_id
      t.string :address
      t.string :contact_name
      t.string :email
      t.string :phones
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :companies, :users
  end
end
