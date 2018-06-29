class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :id_card
      t.date :dob
      t.string :pob
      t.string :phone_number
      t.string :address
      t.string :email
      t.string :gender
      t.string :description

      t.timestamps
    end
  end
end
