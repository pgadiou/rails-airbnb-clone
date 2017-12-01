class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
  end


  def create?
    true
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
