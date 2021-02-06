class Asset < ApplicationRecord
  belongs_to :assetable, polymorphic: true

  delegate :image, to: :assetable
end
