package backend;

import lime.utils.Assets;

class Global
{
	public static var VERSION(get, never):String;

	static function get_VERSION():String
	{
		return Assets.getText('version.txt');
	}
}
