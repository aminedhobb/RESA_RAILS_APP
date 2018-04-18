class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.integer :stars
      t.string :name
      t.text :address

      t.timestamps
    end
  end
end
