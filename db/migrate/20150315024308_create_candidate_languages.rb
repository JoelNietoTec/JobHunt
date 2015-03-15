class CreateCandidateLanguages < ActiveRecord::Migration
  def change
    create_table :candidate_languages do |t|
      t.references :candidate, index: true
      t.integer :language_id
      t.integer :language_level_id

      t.timestamps null: false
    end
    add_foreign_key :candidate_languages, :candidates
  end
end
