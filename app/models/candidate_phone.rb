class CandidatePhone < ActiveRecord::Base
  belongs_to :candidate
  validates :phone_number, presence: { message: "Favor número de teléfono faltante" }
end
