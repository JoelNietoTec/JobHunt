class Postulation < ActiveRecord::Base
  belongs_to :vacant
  belongs_to :candidate
end
