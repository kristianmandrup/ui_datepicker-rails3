require 'rubygems'
require 'bundler'
Bundler.setup

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'

require 'active_support'
require 'action_pack'
require 'action_view'
require 'action_controller'
require 'formtastic'
require 'rspec_tag_matchers'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

require 'ui_datepicker-rails3'

RSpec.configure do |config|
  config.include RspecTagMatchers
  config.include CustomMacros
  config.mock_with :rspec
end