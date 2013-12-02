require 'helpers'

class Zen < Grape::API
	prefix 'api'
	format :json

	helpers APIHelpers

	resource :categories do
		desc "get all cate"
		get "/" do
			data = Project.find_by(name: "zen").categories.desc(:weight).as_json
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
end
