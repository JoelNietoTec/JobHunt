class PhoneType < ActiveRecord::Base
  validates :name, uniqueness: true
end
