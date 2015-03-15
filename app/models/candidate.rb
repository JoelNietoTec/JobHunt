class Candidate < ActiveRecord::Base
  belongs_to :user
  has_many :candidate_phones
  has_many :candidate_experiences
  has_many :candidate_educations
  has_many :candidate_languages
  accepts_nested_attributes_for :candidate_phones, allow_destroy: true
  accepts_nested_attributes_for :candidate_experiences, allow_destroy: true
  accepts_nested_attributes_for :candidate_educations, allow_destroy: true
  accepts_nested_attributes_for :candidate_languages, allow_destroy: true
end
