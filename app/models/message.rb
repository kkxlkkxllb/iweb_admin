class Message
	include Mongoid::Document
	include Mongoid::Timestamps::Short

	field :name, type: String
	field :email, type: String
	field :subject, type: String
	field :content, type: String

end
