class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable 

  TYPE_LIST = ['seller' , 'buyer']
  self.inheritance_column = :_type_disabled

  mount_uploader :image, ProfilePictureUploader
  mount_uploader :cover_image, ProfilePictureUploader  

  has_many :properties

  # Validation
  validates :first_name, length:{in: 6..10}, presence: true
  validates :last_name, length:{in: 6..10}, presence: true
  validates :email , format: {with:/\A(.+)@(.+)\z/, message: "Invalid Email" }, uniqueness: { case_sensitive: false}, presence: true
  validates :contact_number, numericality: true, length: { :minimum => 10, :maximum => 15 }, presence: true

  amoeba do
    enable
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
