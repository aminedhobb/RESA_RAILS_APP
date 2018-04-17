class Room < ApplicationRecord
  validates :status, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  validates :category, presence: true
  validates :photos, presence: true
end
