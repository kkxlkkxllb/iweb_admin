class Ga::Device
  extend Garb::Model
  metrics :pageviews, :uniquePageviews,:timeOnPage
  dimensions :deviceCategory
end
