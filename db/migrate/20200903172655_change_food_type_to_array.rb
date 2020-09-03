class ChangeFoodTypeToArray < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :food_type, "varchar[] USING (string_to_array(food_type, ','))"
  end
end
