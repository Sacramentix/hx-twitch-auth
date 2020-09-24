package twitch_auth;

typedef TokenInfoData = {
	var client_id : String;
	var login : String;
	var scopes : Array<String>;
	var user_id : String;
	@:optional
	var expires_in : Float;
};