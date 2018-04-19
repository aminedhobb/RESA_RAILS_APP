class CreateHotelAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :hotel_attachments do |t|
      t.string :photo
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
