class VacantStatus < ActiveRecord::Base
  validates :name, uniqueness: true
end
