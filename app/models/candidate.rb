class Candidate < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  belongs_to :user

  has_many :candidate_phones
  has_many :candidate_experiences
  has_many :candidate_educations
  has_many :candidate_languages
  accepts_nested_attributes_for :candidate_phones, allow_destroy: true
  accepts_nested_attributes_for :candidate_experiences, allow_destroy: true
  accepts_nested_attributes_for :candidate_educations, allow_destroy: true
  accepts_nested_attributes_for :candidate_languages, allow_destroy: true
  validates_associated :candidate_languages

  def max_education
    CandidateEducation.where("candidate_id = ?", self.id).maximum(:education_level_id)
  end

  def age
    age = Date.today.year - self.birthdate.year
    age -= 1 if Date.today < self.birthdate + age.year
    age
  end
end
