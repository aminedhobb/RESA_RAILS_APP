class AddBookedToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :booked, :string, default: "false"
  end
end
