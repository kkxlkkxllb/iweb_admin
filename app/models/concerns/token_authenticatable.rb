module Concerns
	module TokenAuthenticatable
		extend ActiveSupport::Concern

		included do
			field :authentication_token, type: String
		end

		module ClassMethods
			def authorize(authentication_token = nil)
				if authentication_token
					where(authentication_token: authentication_token).first
				end
			end
		end

		def ensure_authentication_token
			if authentication_token.blank?
				self.authentication_token = generate_authentication_token
			end
		end

		def reset_authentication_token!
			self.authentication_token = generate_authentication_token
			save
		end

		private

		def generate_authentication_token
			loop do
				token = Devise.friendly_token
				break token unless Member.where(authentication_token: token).first
			end
		end
	end
end