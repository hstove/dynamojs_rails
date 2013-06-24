require 'rails'
module DynamojsRails
  class Engine < ::Rails::Engine
    initializer 'dynamo' do
      ActiveSupport.on_load(:action_controller) do
        include DynamojsRails::Helpers
        helper DynamojsRails::Helpers
      end
    end
  end
end