class Room < ApplicationRecord
  validates :booked, inclusion: { in: ["true", "false"]}
  validates :price, presence: true
  validates :capacity, presence: true, inclusion: { in: [1, 2, 3, 4]}
  validates :category, presence: true
  belongs_to :hotel
  has_many :room_attachments, dependent: :destroy
  accepts_nested_attributes_for :room_attachments
end
