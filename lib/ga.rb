class Ga
	def initialize
		Garb::Session.api_key = "AIzaSyDrx8B0GDF3Nvg4skDM82MlV0bRm8rwQtc"
		Garb::Session.login("kkxlkkxllb", "kkxlkkxllb225")
		profile = Garb::Management::Profile.all.detect {|p| p.web_property_id == 'UA-XXXXXXX-X'}
	end

end
