class Event < ApplicationRecord
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :description, presence: true 
end
