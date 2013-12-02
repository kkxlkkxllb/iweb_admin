class Message
	include Mongoid::Document
	include Mongoid::Timestamps::Short

	field :name, type: String
	field :email, type: String
	field :subject, type: String
	field :content, type: String

	validates :content, presence: true, uniqueness: {scope: :email}
	belongs_to :project

	rails_admin do
		list do
			field :name
			field :email
			field :subject
			field :content
			field :c_at
			field :project
		end
	end
end
