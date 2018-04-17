class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.date :arriving_date
      t.date :departing_date

      t.timestamps
    end
  end
end
