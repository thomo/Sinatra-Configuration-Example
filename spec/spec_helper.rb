require 'rubygems'
require 'rack/test'
require 'rspec'

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'lib', 'my_app.rb')

Rspec.configure do |config|
  
end


