class Project
	include Mongoid::Document
	include Mongoid::Timestamps::Short

	field :name, type: String
	field :url
	field :web_property_id

	# 'UA-45522621-2'
	def profile
		Garb::Management::Profile.all.detect {|p| p.web_property_id == web_property_id}
	end

	def analytics
		profile.geo(:filters => {:page_path.eql => '/'},:start_date => (Date.today-10),:end_date => Date.today)
	end

	rails_admin do
		list do
			field :name
			field :web_property_id
			field :url
			field :c_at
		end
	end
end
