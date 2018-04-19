class RoomAttachmentPolicy < ApplicationPolicy

  def create?
    user == record.room.hotel.user
  end

  def update?
    user == record.room.hotel.user
  end

  def destroy?
    user == record.room.hotel.user
  end
end
