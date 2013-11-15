class Ga::Country
	extend Garb::Model
	metrics :pageviews, :uniquePageviews,:timeOnPage
	dimensions :country
end
