class CreatePostulations < ActiveRecord::Migration
  def change
    create_table :postulations do |t|
      t.references :vacant, index: true
      t.references :candidate, index: true
      t.integer :postulation_status_id

      t.timestamps null: false
    end
    add_foreign_key :postulations, :vacants
    add_foreign_key :postulations, :candidates
  end
end
