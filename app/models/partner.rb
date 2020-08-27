class Partner < ApplicationRecord


  def gmap_url
    "https://www.google.ch/maps/place/#{self.address}+suisse"
  end


end
