# Generated by cucumber-sinatra. (Sat May 14 20:29:08 +0200 2011)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/my_app.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = SinatraConfig

class SinatraConfigWorld
  include Capybara
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  SinatraConfigWorld.new
end
