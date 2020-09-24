package twitch_auth.lib.accesstoken;

typedef AccessTokenData = {
	var access_token : String;
	var refresh_token : String;
	@:optional
	var expires_in : Float;
	@:optional
	var scope : Array<String>;
};