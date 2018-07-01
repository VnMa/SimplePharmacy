class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.references :customer, foreign_key: true
      t.integer :totalPrice
      t.string :diagnosis
      t.string :advice

      t.timestamps
    end
  end
end
