class Hotel < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, through: :rooms
  has_many :hotel_attachments
  accepts_nested_attributes_for :hotel_attachments
end
end
