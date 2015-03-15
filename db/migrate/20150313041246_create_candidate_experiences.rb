class CreateCandidateExperiences < ActiveRecord::Migration
  def change
    create_table :candidate_experiences do |t|
      t.references :candidate, index: true
      t.string :company
      t.string :position
      t.float :starting_salary
      t.float :final_salary
      t.integer :industry_id
      t.integer :professional_area_id
      t.date :starting_date
      t.date :end_date
      t.boolean :current_job
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :candidate_experiences, :candidates
  end
end
