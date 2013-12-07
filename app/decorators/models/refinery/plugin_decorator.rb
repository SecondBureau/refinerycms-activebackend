Refinery::Plugin.class_eval do
  attr_accessor :icon
  
  def self.register(&block)
    yield(plugin = self.new)

    raise "A plugin MUST have a name!: #{plugin.inspect}" if plugin.name.blank?

    # Set defaults.
    plugin.menu_match ||= %r{refinery/#{plugin.name}(/.+?)?$}
    plugin.always_allow_access ||= false
    plugin.dashboard ||= false
    plugin.class_name ||= plugin.name.camelize
    plugin.icon ||= 'star'

    # add the new plugin to the collection of registered plugins
    ::Refinery::Plugins.registered << plugin
    
    Refinery::Activebackend.menus!
  end
       
end

