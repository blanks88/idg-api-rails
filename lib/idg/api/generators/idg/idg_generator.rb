require "rails/generators/resource_helpers"
require 'rails/generators'

class IdgGenerator < Rails::Generators::NamedBase
  include Rails::Generators::ResourceHelpers

  source_root File.expand_path('templates', __dir__)

  def create_services_files
    template 'delete_service.rb.tt', File.join("app/controllers", controller_class_path, "#{controller_file_name}_delete_service.rb")
  end

end
