class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.string :city
      t.references :client, null: true
      t.references :chosen_partner, null: true
      t.integer :guest_quantity
      t.integer :budget_per_guest
      t.string :food_type
      t.string :requested_quotes_partners
      t.boolean :has_electricity

      t.timestamps
    end
  end
end
