class Product
	include Mongoid::Document
	include Mongoid::Timestamps::Short
	mount_uploader :image, ImageUploader

	before_save :predo
	# 型号
	field :name, type: String
	field :desc, type: String
	field :special, type: Boolean, :default => false
	field :price, type: Float
	field :size, type: Hash
	# 可选属性
	field :uptime, type: Time
	field :seats, type: Integer
	field :jets, type: Integer
	field :energy, type: Integer

	belongs_to :category

	def predo
		self.special = (special == "0") ? false : true
	end

	def as_json
		ext = {
			_id: _id.to_s,
			image: ($host + image.url)
		}
		super.merge(ext)
	end

	rails_admin do
		list do
			field :image do
				pretty_value do
					bindings[:view].image_tag(bindings[:object].image)
				end
				column_width 70
			end
			field :name
			field :price
			field :special
		end

		edit do
			field :image
			field :category
			field :name
			field :desc
			field :price
			field :special
			field :seats
			field :jets
		end
	end
end
