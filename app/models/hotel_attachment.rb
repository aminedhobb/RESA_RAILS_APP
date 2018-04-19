class HotelAttachment < ApplicationRecord
  belongs_to :hotel, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
