class DriverLicense < ActiveRecord::Base
  validates :code, uniqueness:true
end
