require 'refinerycms-core'

module Refinery
  module Activebackend
    #require 'refinery/activebackend/configuration'
    require 'refinery/activebackend/engine'
    
    class << self
      attr_writer :root, :config
      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end
      
      def config
        @config || YAML.load_file(File.join(root, 'config', 'activebackend.yml'))
      end
      
      def menus!
        config['plugins'].each do |plugin, params|
          Refinery::Plugins.registered.update_attribute plugin, 'icon', params['icon']
        end
      end
    end
  end
end