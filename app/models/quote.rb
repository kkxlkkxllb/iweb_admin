class Quote
	include Mongoid::Document
	include Mongoid::Timestamps::Short

	field :country, type: String
	# cate & model
	field :products, type: Hash
	field :name, type: String
	field :address, type: String
	field :postcode, type: String
	field :email, type: String
	field :tel, type: String
end
