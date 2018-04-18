class HotelAttachment < ApplicationRecord
  belongs_to :hotel
  mount_uploader :photo, PhotoUploader
end
