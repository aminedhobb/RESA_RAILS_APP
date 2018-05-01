class RoomAttachmentPolicy < ApplicationPolicy

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    user == record.room.hotel.user
  end
end
