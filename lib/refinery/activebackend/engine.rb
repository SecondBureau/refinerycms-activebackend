require 'haml-rails'
require 'acts_as_indexed'
require 'compass-rails'


module Refinery
  module Activebackend
    class Engine < ::Rails::Engine
      extend Refinery::Engine

      isolate_namespace Refinery
    
      engine_name :refinery_activebackend

      config.autoload_paths += %W( #{config.root}/lib )

      # initializer "register refinery_dashboard plugin" do
#         Refinery::Plugin.register do |plugin|
#           plugin.pathname = root
#           plugin.name = 'refinery_activebackend'
#           plugin.menu_match = %r{refinery/(refinery_)?dashboard$}
#           plugin.always_allow_access = true
#           plugin.dashboard = true
#           plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.admin_dashboard_path }
#         end
#       end
      
      config.to_prepare do
       #Decorators.register! Gem::Specification.find_by_name("refinerycms-activebackend").gem_dir
       Decorators.register! Refinery::Activebackend.root
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Activebackend)
      end
    end
  end
end
