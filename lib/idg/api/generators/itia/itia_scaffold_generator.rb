require 'rails/generators'
require 'rails/generators/rails/scaffold/scaffold_generator'

class ItiaScaffoldGenerator < Rails::Generators::ScaffoldGenerator

  def create_delete_service_file
    template 'delete_service.rb.tt', File.join("app/controllers", controller_class_path, "#{controller_file_name}_delete_service.rb")
  end

end
