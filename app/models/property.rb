class Property < ApplicationRecord
  belongs_to :user

  validates :address, length: { maximum: 30 }, presence: true

  mount_uploader :image, ImageUploader

  scope :latest, -> { order created_at: :desc }
end
