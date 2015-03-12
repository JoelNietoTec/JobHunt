module CandidatesHelper
  def current_candidate
     Candidate.where("user_id = ?", current_user.id).first
  end
end
