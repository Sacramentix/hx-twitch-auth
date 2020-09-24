package twitch_auth;

/**
	Enhances another auth provider with the ability to make use of refresh
	tokens, automatically refreshing the access token whenever necessary.
**/
@:jsRequire("twitch-auth", "RefreshableAuthProvider") extern class RefreshableAuthProvider {
	/**
		Creates a new auth provider based on the given one that can automatically
		refresh access tokens.
	**/
	function new(childProvider:AuthProvider, refreshConfig:RefreshConfig);
	private final _clientSecret : Dynamic;
	private var _refreshToken : Dynamic;
	private final _childProvider : Dynamic;
	@:optional
	private var _initialExpiry : Dynamic;
	@:optional
	private final _onRefresh : Dynamic;
	/**
		The type of tokens this provider generates.
		
		It is the same as the underlying base auth provider's token type.
	**/
	final tokenType : Null<AuthProviderTokenType>;
	/**
		Retrieves an access token.
		
		If the current access token does not have the requested scopes, the base auth
		provider is called.
		
		If the current access token is expired, automatically renew it.
	**/
	function getAccessToken(?scopes:ts.AnyOf2<String, Array<String>>):js.lib.Promise<Null<AccessToken>>;
	/**
		Force a refresh of the access token.
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
	final currentScopes : Array<String>;
	static var prototype : RefreshableAuthProvider;
}