class City < ApplicationRecord
  validates :name, presence: true

  has_many :hotels
  has_many :rooms, through: :hotels
end
