package twitch_auth.lib.errors.customerror;

@:jsRequire("twitch-auth/lib/Errors/CustomError", "CustomError") extern class CustomError extends js.lib.Error {
	function new(params_0:String, params_1:Null<String>, params_2:Null<String>);
	static var prototype : CustomError;
}