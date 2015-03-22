class Vacant < ActiveRecord::Base
  belongs_to :company
  validates :position, presence: { :message => "Posición obligatoria"}
  validates :job_description, presence: { :message => "Descripción obligatoria"}
end
