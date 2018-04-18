class Room < ApplicationRecord
  validates :status, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  belongs_to :hotel
  has_many :room_attachments
  accepts_nested_attributes_for :room_attachments
end
