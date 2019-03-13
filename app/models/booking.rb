class Booking < ApplicationRecord
  belongs_to :event
  belongs_to :guide, foreign_key: :user_id
  belongs_to :bookable, polymorphic: true
end
