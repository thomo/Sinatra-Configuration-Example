require 'ostruct'

SinatraConfig::configure do
	SiteConfig = OpenStruct.new(
		:title => 'Sinatra Configuration Example',
		:author => 'Example Author'
	)
end