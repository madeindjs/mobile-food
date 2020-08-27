class Client < ApplicationRecord
  validates :first_name, :last_name, :email, :status, presence: true

end
