class Booking < ApplicationRecord
  belongs_to :client_id
  belongs_to :chosen_partner
end
