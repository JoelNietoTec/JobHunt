class CandidateExperience < ActiveRecord::Base
  include AuxiliaryModules::Dates
  belongs_to :candidate

  def work_time
    time_elapsed(self.starting_date, self.end_date)
  end
end
