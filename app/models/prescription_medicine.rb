class PrescriptionMedicine < ApplicationRecord
  belongs_to :medicine
  belongs_to :prescription
end
