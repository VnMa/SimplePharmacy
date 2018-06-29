class CreatePrescriptionMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :prescription_medicines do |t|
      t.references :medicine, foreign_key: true
      t.references :prescription, foreign_key: true
      t.integer :quantity
      t.string :times_per_day
      t.string :units_per_time

      t.timestamps
    end
  end
end
