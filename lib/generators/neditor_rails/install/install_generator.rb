require 'rails/generators'

module NeditorRails
  module Generators
    class InstallGenerator < ::Rails::Generators::Base

      source_root File.expand_path("../templates", __FILE__)
      desc "This generator installs neditor custom config"

      def add_custom_config
        if File.exist?("app/assets/javascripts/neditor_custom_config.js")
          js = File.read("app/assets/javascripts/neditor_custom_config.js")
          insert_into_file "app/assets/javascripts/neditor_custom_config.js", js, :after => "neditor custom config\n"
        else
          copy_file "neditor_custom_config.js", "app/assets/javascripts/neditor_custom_config.js"
        end
      end

    end
  end
end
