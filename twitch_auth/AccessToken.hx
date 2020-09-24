package twitch_auth;

/**
	Represents the data of an OAuth access token returned by Twitch.
**/
@:jsRequire("twitch-auth", "AccessToken") extern class AccessToken {
	function new(_data:twitch_auth.lib.accesstoken.AccessTokenData, ?obtainmentDate:js.lib.Date);
	private final _data : Dynamic;
	private final _obtainmentDate : Dynamic;
	/**
		The access token which is necessary for every request to the Twitch API.
	**/
	final accessToken : String;
	/**
		The refresh token which is necessary to refresh the access token once it expires.
	**/
	final refreshToken : String;
	/**
		The time when the access token will expire.
		
		May be `null`, in which case the token does not expire.
		This can only be the case with very old Client IDs.
	**/
	final expiryDate : Null<js.lib.Date>;
	final isExpired : Bool;
	/**
		The scope the access token is valid for, i.e. what this token enables you to do.
	**/
	final scope : Array<String>;
	static var prototype : AccessToken;
}