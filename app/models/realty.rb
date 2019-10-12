class Realty < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :account
end
