class HomeController < ApplicationController
	before_filter :authenticate_member!

	def index
		@title = "iweb"
		@project = current_member.project
	end

	def analytics
		@project = current_member.project
		@field = @cate = params[:cate]
		@results = @project.analytics @cate
		if params[:cate] == "device"
			@field = "device_category"
		end
		render_json 0,"ok",render_to_string(:template => "ga/table",:layout => false)
	end
end
