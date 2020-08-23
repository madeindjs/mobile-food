class CreatePartners < ActiveRecord::Migration[6.0]
  def change
    create_table :partners do |t|
      t.string :food_type
      t.string :company_name
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.string :email
      t.string :picture_url
      t.text :description
      t.integer :min_guest
      t.text :comment
      t.integer :review

      t.timestamps
    end
  end
end
