class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  mount_uploader :image, ProfilePictureUploader

  has_many :realties

  def full_name
    "#{first_name} #{last_name}"
  end
end
