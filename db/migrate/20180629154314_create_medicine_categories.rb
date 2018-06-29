class CreateMedicineCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :medicine_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
