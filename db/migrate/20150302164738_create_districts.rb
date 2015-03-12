class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.references :province, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :districts, :provinces
  end
end
