class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end


  def create?
    record.user == user
  end

  def new?
    create?
  end

  def update?
    record.user == user
    record.service.user == user
  end

  def edit?
    update?
  end

  def destroy?
    record.user == user
  end
end
