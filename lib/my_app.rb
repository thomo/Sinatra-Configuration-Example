require 'sinatra/base'

class SinatraConfig < Sinatra::Base
  require 'config/environment'

  get '/' do
    "<h1>Configuration</h1><br>
     Title: #{SiteConfig.title}<br>
     Author: #{SiteConfig.author}"
  end
end
