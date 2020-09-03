class Client < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :first_name, :last_name, :email, :status, presence: true
  validates :email, uniqueness: true
end
