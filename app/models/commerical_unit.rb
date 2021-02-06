class CommericalUnit < ApplicationRecord
  validates :parking, presence: true
  validates :shops, presence: true

  has_one_attached :image
end
