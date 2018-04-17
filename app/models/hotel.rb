class Hotel < ApplicationRecord
  belongs_to :city
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, through: :rooms
end
