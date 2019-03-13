class Guide < User
  has_many :bookings



  def full_name
    "#{first_name} #{last_name}"
  end
end
