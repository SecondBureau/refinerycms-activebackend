module Refinery
  class ActivebackendGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def generate_activebackend_initializer
      template 'activebackend.rb.erb', File.join(destination_root, 'config', 'initializers', 'refinery', 'activebackend.rb')
    end
    
    def copy_assets
      template 'ckeditor-config.js', File.join(destination_root, 'app', 'assets', 'javascripts', 'ckeditor-config.js')
      template 'ckeditor-styles.js', File.join(destination_root, 'app', 'assets', 'javascripts', 'ckeditor-styles.js')
      template 'ckeditor-config.css.sass', File.join(destination_root, 'app', 'assets', 'javascripts', 'ckeditor-config.css.sass')
    end

    def rake_db
    end

    def append_load_seed_data
    end
    
  end
end
