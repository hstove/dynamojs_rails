Dir[File.expand_path('../dynamojs_rails/*', __FILE__)].each { |f| require f }

module DynamojsRails
  # if defined?(::Rails) and Gem::Requirement.new('>= 3.1').satisfied_by?(Gem::Version.new ::Rails.version)
  #   class Rails::Engine < ::Rails::Engine
  #     # this class enables the asset pipeline
  #   end
  # end
end
