class Booking < ApplicationRecord
  belongs_to :client
  validates :city, :date, presence: true
end
