class Property < ApplicationRecord
  belongs_to :user

  validates :address, length: { maximum: 30 }, presence: true
  # enum status: [:available, :sold, :pending]

  mount_uploader :image, ImageUploader

  scope :latest, -> { order created_at: :desc }
end
