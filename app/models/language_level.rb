class LanguageLevel < ActiveRecord::Base
  validates :name, uniqueness: true
end
