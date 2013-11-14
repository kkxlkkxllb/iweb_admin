$service = {}
$service[:google] = "AIzaSyDrx8B0GDF3Nvg4skDM82MlV0bRm8rwQtc"

username = "kkxlkkxllb"
password = "kkxlkkxllb225"

Garb::Session.api_key = $service[:google]
Garb::Session.login(username, password)


