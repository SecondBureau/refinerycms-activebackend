module Refinery
  class ActivenbackendGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def generate_activebackend_initializer
      template 'activebackend.rb.erb', File.join(destination_root, 'config', 'initializers', 'refinery', 'activebackend.rb')
    end

    def rake_db
    end

    def append_load_seed_data
    end
    
  end
end
