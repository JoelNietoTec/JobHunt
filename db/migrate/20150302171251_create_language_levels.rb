class CreateLanguageLevels < ActiveRecord::Migration
  def change
    create_table :language_levels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
