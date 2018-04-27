# frozen_string_literal: true

require 'rails_admin_fields/version'
require 'rails_admin_fields/all'

# Pretty rails_admin fields
module RailsAdminFields
  class Engine < Rails::Engine; end
end

# Add new method => config_model
RailsAdmin.module_eval do
  def self.config_model(name, &block)
    RailsAdmin.config { |c| c.model(name, &block) }
  end
end

# Add new config method => config_model
RailsAdmin::Config.class_eval do
  def self.enable_fields_gem
    # Load files from [app/rails_admin] folder
    Dir["#{Rails.root.join('app', 'rails_admin')}/**/*.rb"].each do |file|
      require file
    end
  end
end
