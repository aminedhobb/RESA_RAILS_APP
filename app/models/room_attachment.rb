class RoomAttachment < ApplicationRecord
  belongs_to :room, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
