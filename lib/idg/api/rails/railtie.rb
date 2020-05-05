module Idg
  module Api
    module Rails
      class Railtie < ::Rails::Railtie

        # Register generators
        config.app_generators do
          require "#{ File.dirname __dir__ }/generators/idg/idg_generator.rb"
          require "#{ File.dirname __dir__ }/rails/resource_override.rb"
        end

      end
    end
  end
end
