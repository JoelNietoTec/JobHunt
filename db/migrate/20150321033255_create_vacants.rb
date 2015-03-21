class CreateVacants < ActiveRecord::Migration
  def change
    create_table :vacants do |t|
      t.references :company, index: true
      t.string :position
      t.integer :professional_area_id
      t.integer :job_type_id
      t.float :wage
      t.string :due_date
      t.integer :country_id
      t.integer :province_id
      t.integer :district_id
      t.text :job_description
      t.integer :vacant_status_id

      t.timestamps null: false
    end
    add_foreign_key :vacants, :companies
  end
end
