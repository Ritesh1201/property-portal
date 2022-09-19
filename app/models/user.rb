class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable 

  enum role: [:seller, :buyer]

  mount_uploader :image, ProfilePictureUploader
  mount_uploader :cover_image, ProfilePictureUploader       

  has_many :properties

  amoeba do
    enable
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
