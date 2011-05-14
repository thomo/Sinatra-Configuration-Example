require 'sinatra/base'

class SinatraConfig < Sinatra::Base
  require 'config/environment'

  get '/' do
    "<h1>Configuration</h1><br>
     Environment: #{settings.environment}<br><br>
     Title: #{SiteConfig.title}<br>
     Author: #{SiteConfig.author}<br><br>
     Env specific value: #{SiteConfig.env_specific}"
  end
end
