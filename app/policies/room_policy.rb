class RoomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

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