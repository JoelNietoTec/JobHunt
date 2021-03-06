class Company < ActiveRecord::Base
  has_attached_file :logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ":style/company-missing.png"
  validates_attachment_content_type :logo, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
end
