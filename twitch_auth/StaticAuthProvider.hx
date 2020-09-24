package twitch_auth;

/**
	An auth provider that always returns the same initially given credentials.
	
	You are advised to roll your own auth provider that can handle scope upgrades,
	or to plan ahead and supply only access tokens that account for all scopes
	you will ever need.
**/
@:jsRequire("twitch-auth", "StaticAuthProvider") extern class StaticAuthProvider {
	/**
		Creates a new auth provider with static credentials.
	**/
	function new(clientId:String, ?accessToken:ts.AnyOf2<String, AccessToken>, ?scopes:Array<String>, ?tokenType:AuthProviderTokenType);
	private final _clientId : Dynamic;
	@:optional
	private var _accessToken : Dynamic;
	@:optional
	private var _scopes : Dynamic;
	/**
		The type of token the provider holds.
	**/
	final tokenType : AuthProviderTokenType;
	/**
		Retrieves an access token.
		
		If the current access token does not have the requested scopes, this method throws.
		This makes supplying an access token with the correct scopes from the beginning necessary.
	**/
	function getAccessToken(?scopes:ts.AnyOf2<String, Array<String>>):js.lib.Promise<Null<AccessToken>>;
	function setAccessToken(token:AccessToken):Void;
	/**
		The client ID.
	**/
	final clientId : String;
	/**
		The scopes that are currently available using the access token.
	**/
	final currentScopes : Array<String>;
	static var prototype : StaticAuthProvider;
}