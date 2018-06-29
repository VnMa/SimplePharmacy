class PrescriptionDisease < ApplicationRecord
  belongs_to :disease
  belongs_to :prescription
end
