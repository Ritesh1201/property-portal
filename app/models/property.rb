class Property < ApplicationRecord
  belongs_to :user

  # Validations

  validates :name, presence: true
  validates :address, length: { maximum: 30 }, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }
  validates :rooms, presence:true
  validates :parking_spaces, presence:true
  validates :details, length: { maximum: 500 }, presence: true
  
  mount_uploader :image, ImageUploader
  
  scope :latest, -> { order created_at: :desc }
end
