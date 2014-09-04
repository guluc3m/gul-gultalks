class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.mod?
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :manage, Event
      can :manage, Speaker
    end
  end
end
