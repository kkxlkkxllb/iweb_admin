#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require_tree ./lib

$ ->
	$("#analytics_options").on "click","button", (e) ->
		cate = $(@).data().cate
		$(@).siblings().removeClass "active"
		$(@).addClass 'active'
		$.get "/analytics",cate: cate,(data) ->
			$("#analytics_table").html data.data
	# params =
	# 	name: "kk"
	# 	email: "kkxlkkxllb@gmail.com"
	# 	subject: "test"
	# 	content: "should"
	# $.post "/api/message", message: params
