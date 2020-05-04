require 'rails/generators'
require 'rails/generators/rails/scaffold/scaffold_generator'

class IdgGenerator < Rails::Generators::ScaffoldGenerator
  remove_hook_for :scaffold_controller
  remove_hook_for :stylesheet_engine
  remove_class_option :assets

  class_option :api, type: :boolean
  class_option :stylesheets, type: :boolean, desc: "Generate Stylesheets"
  class_option :stylesheet_engine, desc: "Engine for Stylesheets"
  class_option :assets, type: :boolean
  class_option :resource_route, type: :boolean
  class_option :scaffold_stylesheet, type: :boolean

  def handle_skip
    @options = @options.merge(stylesheets: false) unless options[:assets]
    @options = @options.merge(stylesheet_engine: false) unless options[:stylesheets] && options[:scaffold_stylesheet]
  end

  hook_for :scaffold_controller, required: true

  hook_for :assets do |assets|
    invoke assets, [controller_name]
  end

  hook_for :stylesheet_engine do |stylesheet_engine|
    if behavior == :invoke
      invoke stylesheet_engine, [controller_name]
    end
  end

  def create_delete_service_file
    template 'delete_service.rb.tt', File.join("app/controllers", controller_class_path, "#{controller_file_name}_delete_service.rb")
  end

end
