class RemoveStatusFromRoom < ActiveRecord::Migration[5.1]
  def change
    remove_column :rooms, :status, :boolean
  end
end
