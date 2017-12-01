class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :date, presence: true
  validates :location, presence: true
  validates :user_id, presence: true
  validates :service_id, presence: true
  geocoded_by :location
  after_validation :geocode, if: :location_changed?
end
