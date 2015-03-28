class ReferenceType < ActiveRecord::Base
  validates :name, uniqueness: true
end
