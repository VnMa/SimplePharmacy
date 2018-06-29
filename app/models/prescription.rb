class Prescription < ApplicationRecord
  belongs_to :customer
  has_many :prescription_diseases
  has_many :diseases, through :prescription_diseases

  has_many :prescription_medicines
  has_many :medicines, through :prescription_medicines
end
