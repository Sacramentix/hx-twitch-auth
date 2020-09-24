@:jsRequire("twitch-auth") @valueModuleOnly extern class TwitchAuth {
	/**
		Retrieves an access token with your client credentials and an authorization code.
	**/
	static function exchangeCode(clientId:String, clientSecret:String, code:String, redirectUri:String):js.lib.Promise<twitch_auth.AccessToken>;
	/**
		Retrieves an app access token with your client credentials.
	**/
	static function getAppToken(clientId:String, clientSecret:String):js.lib.Promise<twitch_auth.AccessToken>;
	/**
		Retrieves information about an access token.
	**/
	static function getTokenInfo(accessToken:String, ?clientId:String):js.lib.Promise<twitch_auth.TokenInfo>;
	/**
		Refreshes an expired access token with your client credentials and the refresh token that was given by the initial authentication.
	**/
	static function refreshUserToken(clientId:String, clientSecret:String, refreshToken:String):js.lib.Promise<twitch_auth.AccessToken>;
	/**
		Revokes an access token.
	**/
	static function revokeToken(clientId:String, accessToken:String):js.lib.Promise<Void>;
	static function getAppAccessToken(creds:twitch_auth.LegacyAuthCredentials):js.lib.Promise<twitch_auth.lib.accesstoken.AccessTokenData>;
	static function getUserAccessToken(creds:twitch_auth.LegacyAuthCredentials, code:String, ?redirectUri:String):js.lib.Promise<twitch_auth.lib.accesstoken.AccessTokenData>;
	static function refreshUserAccessToken(creds:twitch_auth.LegacyAuthCredentials, refreshToken:String):js.lib.Promise<twitch_auth.lib.accesstoken.AccessTokenData>;
}