class Product
	include Mongoid::Document
	include Mongoid::Timestamps::Short
	mount_uploader :image, ImageUploader
	# 型号
	field :name, type: String
	field :desc, type: String
	field :special, type: Boolean
	field :price, type: Float
	field :size, type: Hash
	# 可选属性
	field :uptime, type: Time
	field :seats, type: Integer
	field :jets, type: Integer
	field :energy, type: Integer

	belongs_to :category

end
