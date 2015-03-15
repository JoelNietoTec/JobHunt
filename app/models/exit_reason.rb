class ExitReason < ActiveRecord::Base
  validates :name, uniqueness: true
end
