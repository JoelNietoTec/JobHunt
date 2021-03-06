class Country < ActiveRecord::Base
  validates :name, uniqueness:true
  has_many :provinces
  def title
    self.name.titleize
  end

  def title_esp
    self.esp_name.titleize
  end
end
