class Booking < ApplicationRecord
  belongs_to :client
  belongs_to :chosen_partner
end
