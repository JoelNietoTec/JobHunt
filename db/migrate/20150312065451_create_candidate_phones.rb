class CreateCandidatePhones < ActiveRecord::Migration
  def change
    create_table :candidate_phones do |t|
      t.references :candidate, index: true
      t.integer :phone_type_id
      t.string :phone_number

      t.timestamps null: false
    end
    add_foreign_key :candidate_phones, :candidates
  end
end
