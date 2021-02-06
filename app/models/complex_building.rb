class ComplexBuilding < ApplicationRecord
  validates :units, presence: true

  has_one_attached :image
end
