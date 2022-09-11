class Property < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  scope :latest, -> { order created_at: :desc }
end
