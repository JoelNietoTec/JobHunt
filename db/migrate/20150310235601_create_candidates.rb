class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.references :user, index: true
      t.string :forenames
      t.string :surnames
      t.integer :sex_id
      t.date :birthdate
      t.integer :marital_status_id
      t.integer :document_type_id
      t.string :document_id
      t.string :email
      t.integer :nationality_id
      t.integer :province_id
      t.integer :district_id
      t.integer :township_id
      t.string :address
      t.text :presentation
      t.float :wage_aspiration
      t.string :professional_title
      t.integer :driver_license_id

      t.timestamps null: false
    end
    add_foreign_key :candidates, :users
  end
end
