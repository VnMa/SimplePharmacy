class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
      t.string :name
      t.integer :price
      t.string :unit
      t.references :medicine_category, foreign_key: true
      t.string :use
      t.string :description

      t.timestamps
    end
  end
end
