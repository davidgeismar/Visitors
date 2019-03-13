class CreatBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :bookable, polymorphic: true
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.datetime   :start_time
      t.datetime   :end_time
      t.integer    :duration
      t.text       :meeting_point
      t.boolean    :accepted, default: false
    end
  end
end
