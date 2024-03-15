

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Require RSpec Rails for Rails integration
# Add additional requires for support files in spec/support
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

# Set up RSpec configuration
RSpec.configure do |config|
  # Additional configuration options can go here
  # Include Devise test helpers if you're using Devise
  config.include Devise::Test::IntegrationHelpers, type: :feature
end
