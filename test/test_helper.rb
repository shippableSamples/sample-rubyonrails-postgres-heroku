require 'minitest/reporters'
require 'simplecov'
require 'simplecov-csv'
SimpleCov.formatter = SimpleCov::Formatter::CSVFormatter
SimpleCov.coverage_dir(ENV["COVERAGE_REPORTS"])
SimpleCov.start

MiniTest::Reporters.use! [MiniTest::Reporters::DefaultReporter.new,
                          MiniTest::Reporters::JUnitReporter.new(ENV["CI_REPORTS"])]

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
