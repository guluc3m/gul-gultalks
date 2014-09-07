class AdminAbility
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    elsif user.assistant?
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :manage, Event
      can :manage, Speaker
      can :read, Verifier
    end
  end
end
