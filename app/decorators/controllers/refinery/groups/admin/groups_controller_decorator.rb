if defined?(Refinery::Groups)
  
Refinery::Groups::Admin::GroupsController.class_eval do
  
  def index
    @groups = Refinery::Groups::Group.all
    @groups_active_count = Refinery::Groups::Group.active.count
    @groups_expired_count = Refinery::Groups::Group.expired.count
    @groups_soon_expired_count = Refinery::Groups::Group.soon_expired.count 
  end
  
  private
  
  def self.pageable?
    false
  end
  
end

end
