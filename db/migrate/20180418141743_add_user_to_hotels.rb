class AddUserToHotels < ActiveRecord::Migration[5.1]
  def change
    add_reference :hotels, :user, foreign_key: true
  end
end
