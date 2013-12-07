Refinery::Plugins.class_eval do 

  def find_current(params)
    detect {|plugin| params[:controller].try(:gsub, "admin/", "") =~ plugin.menu_match }
  end
  
  def update_attribute(plugin_name, att, val)
    each { |plugin|  plugin.send("#{att}=", val) if plugin.name == plugin_name }
  end
  
end