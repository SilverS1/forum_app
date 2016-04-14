class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user.admin?

    	can :manage, :all

    else 

        can :destroy, Reply do |reply|
            reply.user == user
        end

        

    end

  end
end
