class ReviewPolicy < ApplicationPolicy

  def create?
    record.booking.user == user
  end

  def update?
    record.booking.user == user
  end

  def destroy?
    record.booking.user == user
  end
end
