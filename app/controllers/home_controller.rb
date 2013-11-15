class HomeController < ApplicationController
	before_filter :authenticate_member!

	def index
		@title = "iweb"
		@project = current_member.project
	end

	def analytics
		@project = current_member.project
		@cate = params[:cate] || "country"
		@results = @project.analytics @cate
		render_json 0,"ok",render_to_string(:template => "ga/table",:layout => false)
	end
end
