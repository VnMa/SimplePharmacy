class CreatePrescriptionDiseases < ActiveRecord::Migration[5.1]
  def change
    create_table :prescription_diseases do |t|
      t.references :disease, foreign_key: true
      t.references :prescription, foreign_key: true

      t.timestamps
    end
  end
end
