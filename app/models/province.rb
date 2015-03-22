class Province < ActiveRecord::Base
  has_many :districts
  has_many :townships, :through => :districts
  validates :name, uniqueness: { scope: :country_id }
  belongs_to :country
  def title
    self.name.titleize
  end
end
