require 'rubygems'
require "bundler/setup"

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib', 'my_app.rb')

RSpec.configure do |config|
  
end


