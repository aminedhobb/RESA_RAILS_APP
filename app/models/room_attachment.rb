class RoomAttachment < ApplicationRecord
  belongs_to :room
  mount_uploader :photo, PhotoUploader
  validates_presence_of :photo
end
