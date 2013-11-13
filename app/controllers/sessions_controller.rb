class SessionsController < Devise::SessionsController
	def new
		@title = t("title")
		super
	end
end
