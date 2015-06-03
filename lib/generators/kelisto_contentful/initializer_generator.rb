module KelistoContentful
  class InitializerGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
   
    desc "Generate KelistoContentful initializer file in your project."
    def copy_config_file
      copy_file "kelisto_contentful.rb",
                "config/initializers/kelisto_contentful.rb"
    end
  end
end
