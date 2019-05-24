class Document < ApplicationRecord
  mount_uploader :asset, AssetUploader
  validates :asset, presence: true

  belongs_to :fase
end
