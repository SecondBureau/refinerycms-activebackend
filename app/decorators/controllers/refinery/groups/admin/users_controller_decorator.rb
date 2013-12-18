if defined?(Refinery::Groups)
  Refinery::Groups::Admin::UsersController.class_eval do
  
  
  private
  
  def self.pageable?
    false
  end
  
end
end