class Category
	include Mongoid::Document
	include Mongoid::Timestamps::Short
	mount_uploader :image, ImageUploader

	field :name, type: String
	field :info, type: String
	field :weight, type: Integer, :default => 0
	field :property, type: Array
	field :color, type: Array

	belongs_to :project
	has_many :products

	PROPERTY = %w{}

	def as_json
		ext = {
			_id: _id.to_s,
			image: ($host + image.url)
		}
		super(:only => [:name,:weight,:info]).merge(ext)
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
			field :weight
			field :info
		end

		edit do
			field :image
			field :name
			field :info
			field :weight
			field :project
			field :products
		end
	end
end
