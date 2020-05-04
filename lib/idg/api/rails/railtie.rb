module Idg
  module Api
    module Rails
      class Railtie < ::Rails::Railtie

        # Register generators
        config.app_generators do
          require "#{ File.dirname __dir__ }/generators/itia/itia_scaffold_generator.rb"
        end

      end
    end
  end
end
