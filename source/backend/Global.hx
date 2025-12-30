package backend;

import flixel.util.FlxSave;
import lime.utils.Assets;

class Global
{
	public static var VERSION(get, never):String;

	static function get_VERSION():String
	{
		return Assets.getText('version.txt');
	}

	public static var DEFINES(get, never):Array<String>;

	static function get_DEFINES():Array<String>
	{
		var d = [];

		// platforms
		#if hl
		d.push('hl');
		#else
		#if windows d.push('windows'); #end
		#if macos d.push('macos'); #end
		#if linux d.push('linux'); #end
		#if html5 d.push('html5'); #end
		#if android d.push('android'); #end
		#if ios d.push('ios'); #end
		#end

		#if debug d.push('debug'); #end

		return d;
	}

	public static var BUILD_DEBUG(get, never):Bool;

	static function get_BUILD_DEBUG():Bool
	{
		return DEFINES.contains('debug');
	}

	public static var BUILD_PLATFORM(get, never):String;

	static function get_BUILD_PLATFORM():String
	{
		return DEFINES[0];
	}
}
