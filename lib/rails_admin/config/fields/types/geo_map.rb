# frozen_string_literal: true

module RailsAdmin
  module Config
    module Fields
      module Types
        # MapPosition
        class GeoMap < RailsAdmin::Config::Fields::Types::String
          RailsAdmin::Config::Fields::Types.register(self)

          def length
            nil
          end

          def input_size
            100
          end

          register_instance_option :partial do
            :geo_map
          end
        end
      end
    end
  end
end
