package twitch_auth;

/**
	An auth provider that retrieve tokens using client credentials.
**/
@:jsRequire("twitch-auth", "ClientCredentialsAuthProvider") extern class ClientCredentialsAuthProvider {
	/**
		Creates a new auth provider to receive an application token with using the client ID and secret.
	**/
	function new(clientId:String, clientSecret:String);
	private final _clientId : Dynamic;
	private final _clientSecret : Dynamic;
	@:optional
	private var _token : Dynamic;
	/**
		The type of tokens this provider generates.
		
		This auth provider generates app tokens.
	**/
	final tokenType : AuthProviderTokenType;
	/**
		Retrieves an access token.
		
		If any scopes are provided, this throws. The client credentials flow does not support scopes.
	**/
	function getAccessToken(?scopes:ts.AnyOf2<String, Array<String>>):js.lib.Promise<AccessToken>;
	/**
		Retrieves a new app access token.
	**/
	function refresh():js.lib.Promise<AccessToken>;
	function setAccessToken(token:AccessToken):Void;
	/**
		The client ID.
	**/
	final clientId : String;
	/**
		The scopes that are currently available using the access token.
	**/
	final currentScopes : Array<Any>;
	static var prototype : ClientCredentialsAuthProvider;
}