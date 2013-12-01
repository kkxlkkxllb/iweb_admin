class Dealer
	include Mongoid::Document
	field :name, type: String
	field :address, type: String
	field :tel, type: String
	# country code
	field :country, type: String
	field :city, type: String
	# 备注
	field :info, type: String
end
