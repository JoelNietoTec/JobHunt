class CreateCandidateReferences < ActiveRecord::Migration
  def change
    create_table :candidate_references do |t|
      t.references :candidate, index: true
      t.string :name
      t.integer :reference_type_id
      t.string :occupation
      t.string :phone

      t.timestamps null: false
    end
    add_foreign_key :candidate_references, :candidates
  end
end
