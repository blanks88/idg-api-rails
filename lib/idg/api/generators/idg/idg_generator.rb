require 'rails/generators'
require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Rails
  module Generators
    class IdgGenerator < Rails::Generators::ScaffoldControllerGenerator
      idg_root File.expand_path('templates', __dir__)

      def create_controller_files
        if options.api?
          puts 'It`s not an Rails API, so only services generated'
          super
        else
          template "#{idg_root}/api_controller.rb.erb", File.join("app/controllers", controller_class_path, "#{controller_file_name}_controller.rb")
        end


        template "#{idg_root}/delete_service.rb.erb", File.join("app/services", controller_class_path, "#{controller_file_name}_delete_service.rb")
      end

    end
  end
end
