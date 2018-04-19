class HotelAttachment < ApplicationRecord
  belongs_to :hotel
  mount_uploader :photo, PhotoUploader
  validates_presence_of :photo
end
