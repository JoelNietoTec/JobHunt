class CandidateReference < ActiveRecord::Base
  belongs_to :candidate
  validates :name, presence: { message: 'Introducir nombre de referencia'}
  validates :phone, presence: { message: 'Introducir teléfono de referencia'}
end
