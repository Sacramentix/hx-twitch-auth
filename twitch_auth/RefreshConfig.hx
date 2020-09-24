package twitch_auth;

/**
	Configuration for the {@RefreshableAuthProvider}.
**/
typedef RefreshConfig = {
	/**
		The client secret of your application.
	**/
	var clientSecret : String;
	/**
		The refresh token you got when requesting an access token from Twitch.
	**/
	var refreshToken : String;
	/**
		The date of expiry of your access token.
	**/
	@:optional
	var expiry : js.lib.Date;
	/**
		A callback that is called whenever the auth provider refreshes the token, e.g. to save the new data in your database.
	**/
	@:optional
	dynamic function onRefresh(token:AccessToken):Void;
};