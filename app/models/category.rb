class Category
	include Mongoid::Document
	mount_uploader :image, ImageUploader

	field :name, type: String
	field :info, type: String
	field :weight, type: Integer, :default => 0
	field :property, type: Array
	field :color, type: Array

	belongs_to :project
	has_many :products

	PROPERTY = %w{}
end
