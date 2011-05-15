require 'rubygems'

require 'sinatra/base'
require 'couchrest_model'

class SinatraConfig < Sinatra::Base
  require 'config/environment'

  configure do
	  CouchDb = CouchRest.database("#{SiteConfig.couchdb_url}/#{SiteConfig.couchdb_name}")
	  
	  # after setup the configuration load the modules (which use this configuration, too)
    require 'lib/document'
  end
  
  get '/' do
    "<h1>Configuration</h1><br>
     Environment: #{settings.environment}<br><br>
     Title: #{SiteConfig.title}<br>
     Author: #{SiteConfig.author}<br><br>
     Env specific value: #{SiteConfig.env_specific}"
  end
  
  get '/couch' do
    "CouchRest #{CouchDb}"
  end
  
  get '/doc' do
    doc = Document.new(:name => "My simple document")
    "Doc: #{doc.name}<br>
     Database: #{doc.database}"
  end
end
