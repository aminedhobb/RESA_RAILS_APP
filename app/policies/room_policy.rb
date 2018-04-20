class RoomPolicy < ApplicationPolicy

  def create?
    user == record.hotel.user
  end

  def update?
    user == record.hotel.user
  end

  def destroy?
    user == record.hotel.user
  end
end
