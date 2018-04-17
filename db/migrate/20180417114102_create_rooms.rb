class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.boolean :status
      t.integer :price
      t.integer :capacity
      t.text :category
      t.text :photos
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
