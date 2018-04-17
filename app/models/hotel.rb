class Hotel < ApplicationRecord
  belongs_to :city
  validates :name, presence: true, uniqueness: true
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
