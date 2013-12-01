class Project
	include Mongoid::Document
	include Mongoid::Timestamps::Short

	field :name, type: String
	field :url
	field :web_property_id

	belongs_to :member
	has_many :categories

	# 'UA-45522621-2'
	def profile
		Garb::Management::Profile.all.detect {|p| p.web_property_id == web_property_id}
	end

	def analytics(cate)
		kl = eval("Ga::#{cate.capitalize}")
		if defined?(kl)
			options = {
				:filters => {:page_path.eql => '/'},
				:start_date => (Date.today-10),
				:end_date => Date.today
			}
			kl.results(profile,options).results
		else
			[]
		end
	end

	rails_admin do
		list do
			field :name
			field :url
			field :member
			field :web_property_id
			field :c_at
		end
		edit do
			field :name
			field :url
			field :member
			field :web_property_id
		end
	end
end
