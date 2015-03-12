class CreateTownships < ActiveRecord::Migration
  def change
    create_table :townships do |t|
      t.references :district, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :townships, :districts
  end
end
