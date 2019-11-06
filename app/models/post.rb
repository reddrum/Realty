class Post < ApplicationRecord
  mount_uploader :image, PhotoUploader

  scope :active, -> { where(active: true) }
end
