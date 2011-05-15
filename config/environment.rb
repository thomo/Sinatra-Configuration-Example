require 'ostruct'

SinatraConfig::configure do
	SiteConfig = OpenStruct.new(
		:title => 'Sinatra Configuration Example',
		:author => 'Example Author',
		:env_specific => 'default value',
		:couchdb_url => 'http://127.0.0.1:5984',
		:couchdb_name => 'sinatraconfig'
	)
end

SinatraConfig::configure :development do
  SiteConfig.env_specific = "dev value"
  SiteConfig.couchdb_name = "sinatraconfig-dev"
end

SinatraConfig::configure :test do
  SiteConfig.env_specific = "test value"
  SiteConfig.couchdb_name = "sinatraconfig-test"
end
