package twitch_auth.lib;

@:jsRequire("twitch-auth/lib/legacy") @valueModuleOnly extern class Legacy {
	static function getUserAccessToken(creds:twitch_auth.LegacyAuthCredentials, code:String, ?redirectUri:String):js.lib.Promise<twitch_auth.lib.accesstoken.AccessTokenData>;
	static function refreshUserAccessToken(creds:twitch_auth.LegacyAuthCredentials, refreshToken:String):js.lib.Promise<twitch_auth.lib.accesstoken.AccessTokenData>;
	static function getAppAccessToken(creds:twitch_auth.LegacyAuthCredentials):js.lib.Promise<twitch_auth.lib.accesstoken.AccessTokenData>;
}