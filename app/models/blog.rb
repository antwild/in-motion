class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :cover_image, PhotoUploader
end
