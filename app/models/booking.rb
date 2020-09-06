class Booking < ApplicationRecord
  belongs_to :client
  validates :city, :date, presence: true

  before_save :split_food_type

  private

  def split_food_type
    puts self.inspect
    puts food_type.inspect
    puts @food_type.inspect
    puts self.food_type.inspect
    # if @food_type
  end
end
