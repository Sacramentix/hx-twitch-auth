package twitch_auth;

/**
	Thrown whenever an invalid token is supplied.
**/
@:jsRequire("twitch-auth", "InvalidTokenError") extern class InvalidTokenError extends twitch_auth.lib.errors.customerror.CustomError {
	function new();
	static var prototype : InvalidTokenError;
}