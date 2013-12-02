class CategoriesController < ApplicationController
	def image
		cate = Category.find(params[:id])
		content = cate.image.read
		if stale?(etag: content, last_modified: cate.u_at.utc, public: true)
			send_data content, type: cate.image.file.content_type, disposition: "inline"
			expires_in 0, public: true
		end
	end
end