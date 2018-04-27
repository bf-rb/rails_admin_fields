# frozen_string_literal: true

module RailsAdmin
  module Config
    module Fields
      module Types
        # Geography
        class Geography < RailsAdmin::Config::Fields::Types::String
          RailsAdmin::Config::Fields::Types.register(self)

          def length
            nil
          end

          def input_size
            100
          end
        end
      end
    end
  end
end
