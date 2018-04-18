class ChangeAddressToString < ActiveRecord::Migration[5.1]
  def change
    change_column :hotels, :address, :string
  end
end
