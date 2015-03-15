class CreateCandidateEducations < ActiveRecord::Migration
  def change
    create_table :candidate_educations do |t|
      t.references :candidate, index: true
      t.string :institution
      t.string :title
      t.integer :education_level_id
      t.integer :educative_status_id
      t.integer :educative_area_id
      t.date :starting_date
      t.string :finish_date
      t.integer :country_id

      t.timestamps null: false
    end
    add_foreign_key :candidate_educations, :candidates
  end
end
