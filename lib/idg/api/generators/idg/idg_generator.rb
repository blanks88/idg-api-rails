# require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'
require 'rails/generators'

class IdgGenerator < Rails::Generators::ScaffoldControllerGenerator
  # source_root File.expand_path('templates', __dir__)


  def create_delete_service_file
    template 'delete_service.rb.tt', File.join("app/controllers", controller_class_path, "#{controller_file_name}_delete_service.rb")
  end

end
