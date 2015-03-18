class ChangeFinishDateFromCandidateEducations < ActiveRecord::Migration
  def change
    change_column :candidate_educations, :finish_date, :date
  end
end
