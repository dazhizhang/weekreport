class Ability
  include CanCan::Ability
    def initialize(user)
      if user.role.name == 'admin'
       # can :read, :all
       # can :access, :rails_admin
      #  can :dashboard
        can :manage, :all
        can :access, :rails_admin
     # elsif user.role.name == 'approved'
      #   can :access, :rails_admin
       #   can :manage, :post
        #  can :read, :all
        else 
         # can :access, :rails_admin
       end
########################
  #if user.has_role?('admin')
  #can :read, :all
  #can :access, :rails_admin
  #can :dashboard
  
  #if user.has_role?('superadmin')
   # can :manage, :all
  #else
   # can :manage, [] # A
  #end
#else
  #can :read, [] # B
  #can :create, [] # C
#end
########################
    end
end