class DocumentType < ActiveRecord::Base
  validates :name, uniqueness: true
end
