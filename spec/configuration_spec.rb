require File.dirname(__FILE__) + '/spec_helper'

describe 'SinatraConfig' do
  include Rack::Test::Methods

  def app
    SinatraConfig
  end

  it 'should run a simple test' do
    get '/'
    last_response.status.should == 200
    last_response.body.should include("Configuration")
  end
  
  it 'should run in test environment' do
    SinatraConfig::settings.environment.should == :test
  end
  
  it 'should read in the configuration' do
    SiteConfig.title.should == "Sinatra Configuration Example"
    SiteConfig.author.should == "Example Author"
    SiteConfig.env_specific.should == "test value"
  end
end
