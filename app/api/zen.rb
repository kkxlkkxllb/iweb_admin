require 'helpers'

class Zen < Grape::API
	prefix 'api'
	format :json

	helpers APIHelpers

	before do
		@project = Project.find_by(name: "zen")
	end

	resource :categories do
		desc "get all cate"
		get "/" do
			data = @project.categories.desc(:weight).as_json
			render_json 0,"ok",data
		end

		# route_param :id do

		# end
	end

	resource :products do
		desc "get by cate"
		get "/" do
			category = Category.find(params[:cate_id])
			data = category.products.map(&:as_json)
			render_json 0,"ok",data
		end
	end

	resource :message do
		desc "create"
		post do
			if @project.messages.count < 1000
				@project.messages.create clean_params(params).require(:message).permit(:name,:email,:subject,:content)
			end
			render_json 0,"ok"
		end
	end

	resource :quote do
		desc "create"
		post do
			if @project.quotes.count < 1000

			end
			render_json 0,"ok"
		end
	end
end
