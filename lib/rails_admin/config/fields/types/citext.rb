# frozen_string_literal: true

module RailsAdmin
  module Config
    module Fields
      module Types
        # Geography
        class Citext < RailsAdmin::Config::Fields::Types::Text
          RailsAdmin::Config::Fields::Types.register(self)

          # def length
          #   nil
          # end
          #
          # def input_size
          #   100
          # end
        end
      end
    end
  end
end
