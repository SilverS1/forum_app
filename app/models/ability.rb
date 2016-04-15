class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user.admin?

    	can :manage, :all

    else 

        can :destroy, Reply do |reply|
            reply.user == user
        end

        can :destroy, Topic do |topic|
          topic.user == user
        end

        

        

    end

  end
end
