# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Customer.destroy_all
MedicineCategory.destroy_all
Medicine.destroy_all
Disease.destroy_all

# Create customer list
GENDER = ['M', 'F']
cust_arr = []
[*1..100].each do |i|
    cust_arr.push({name: ::Faker::Name.name, id_card: Faker::IDNumber.valid, dob: Faker::Date.birthday(1, 65), phone_number: Faker::PhoneNumber.cell_phone,
         address: ::Faker::Address.full_address, email: Faker::Internet.email, gender: GENDER.sample, description: ''})
end
Customer.create!(cust_arr)

# Medicine category list
# rails g model medicineCategory name
medCateArr = []
['Co xuong khop', 'Giam dau', 'Ho', 'So mui', 'Kho tieu'].each do |cate|
    medCateArr.push(name: cate)
end
MedicineCategory.create!(medCateArr)

# Medicine list
# rails g model medicine name price:integer unit medicineCategory:references use description
medCateIds = MedicineCategory.pluck(:id)
UNIT_TYPES=%w(vien lo hop)
medArr = []
%w(paracetamon maroc strepsil v-rohto).each do |med|
    medArr.push({name: med, price: Faker::Number.number(2), unit: UNIT_TYPES.sample, medicine_category_id: medCateIds.sample})
end
Medicine.create!(medArr)


# Disease list
# rails g model disease name
diseaseArr = []
['Ho', 'So Mui', 'Viem hong', 'Kho tieu', 'Tieu chay'].each do |cate|
    diseaseArr.push(name: cate)
end
Disease.create!(diseaseArr)