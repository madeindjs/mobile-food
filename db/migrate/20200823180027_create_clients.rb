class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone_number
      t.text :comment
      t.string :status

      t.timestamps
    end
  end
end
