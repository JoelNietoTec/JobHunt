class EducativeStatus < ActiveRecord::Base
  validates :name, uniqueness: true
end
