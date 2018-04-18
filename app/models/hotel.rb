class Hotel < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, through: :rooms
  belongs_to :user
end
