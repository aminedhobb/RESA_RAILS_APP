class RoomPolicy < ApplicationPolicy

  def create?
    true
  end

  def update?
    user == record.hotel.user
  end

  def destroy?
    user == record.hotel.user
  end
end
