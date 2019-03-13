class Visitor < User
  has_many :bookings, as: :bookable
end
