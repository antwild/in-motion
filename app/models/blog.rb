class Blog < ApplicationRecord
  belongs_to :user
  mount_uploader :cover_image, PhotoUploader
  validates :title, presence: true
  validates :content, presence: true
end
