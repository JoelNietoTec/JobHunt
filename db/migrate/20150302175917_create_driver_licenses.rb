class CreateDriverLicenses < ActiveRecord::Migration
  def change
    create_table :driver_licenses do |t|
      t.string :code
      t.string :vehicle
      t.boolean :active

      t.timestamps null: false
    end
  end
end
