class Partner < ApplicationRecord
  validates :company_name, :email,:food_type, presence: true
  validates :email, uniqueness: true

  def gmap_url
    "https://www.google.ch/maps/place/#{self.address}+suisse"
  end
end
