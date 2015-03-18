class CandidateLanguage < ActiveRecord::Base
  belongs_to :candidate
  validates :language_id, uniqueness: { scope: :candidate_id, message: "Idioma duplicado"}
end
