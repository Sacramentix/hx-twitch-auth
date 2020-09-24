package twitch_auth;

/**
	Information about an access token.
**/
@:jsRequire("twitch-auth", "TokenInfo") extern class TokenInfo {
	function new(_data:TokenInfoData);
	private final _data : Dynamic;
	private final _obtainmentDate : Dynamic;
	/**
		The client ID.
	**/
	final clientId : String;
	/**
		The ID of the authenticated user.
	**/
	final userId : String;
	/**
		The user name of the authenticated user.
	**/
	final userName : String;
	/**
		The scopes for which this token is valid.
	**/
	final scopes : Array<String>;
	/**
		The time when the token will expire.
		
		If this returns null, it means that the token is either invalid or never expires (happens with old client IDs).
	**/
	final expiryDate : Null<js.lib.Date>;
	static var prototype : TokenInfo;
}