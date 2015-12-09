ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
# minitest-reporter gem 使用のための記述
require "minitest/reporters"
Minitest::Reporters.use!

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # ApplicationHelperをtestで使用するための記述
  include ApplicationHelper

  # Add more helper methods to be used by all tests here...
end
