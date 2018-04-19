class RoomAttachmentPolicy < ApplicationPolicy

  def update?
    user == record.room.hotel.user
  end

  def destroy?
    user == record.room.hotel.user
  end
end
