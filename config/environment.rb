require 'ostruct'

SinatraConfig::configure do
	SiteConfig = OpenStruct.new(
		:title => 'Sinatra Configuration Example',
		:author => 'Example Author',
		:env_specific => 'default value'
	)
end

SinatraConfig::configure :development do
  SiteConfig.env_specific = "dev value"
end

SinatraConfig::configure :test do
  SiteConfig.env_specific = "test value"
end