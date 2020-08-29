class Client < ApplicationRecord
  has_many :bookings
  validates :first_name, :last_name, :email, :status, presence: true

end
