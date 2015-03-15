class AddExitReasonIdToCandidateExperiences < ActiveRecord::Migration
  def change
    add_column :candidate_experiences, :exit_reason_id, :integer
  end
end
