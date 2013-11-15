class Ga::Browser
	extend Garb::Model
	metrics :pageviews, :uniquePageviews,:timeOnPage
	dimensions :browser
end
