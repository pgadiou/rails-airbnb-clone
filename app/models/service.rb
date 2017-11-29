class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :category, presence: true
  validates :location, presence: true
  validates :distance, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :address_changed?
end
