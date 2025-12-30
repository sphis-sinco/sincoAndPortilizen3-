package backend.save;

import flixel.input.keyboard.FlxKey;
import flixel.util.FlxSave;

class NewSave
{
	public static var save:FlxSave;

	public static var last_version(get, set):String;

	static function get_last_version():String
		return Save.getField(save, 'last_version');

	static function set_last_version(set:String):String
		return Save.setField(save, 'last_version', set);

	public static var levels_complete(get, set):Array<String>;

	static function get_levels_complete():Array<String>
		return Save.getField(save, 'levels_complete');

	static function set_levels_complete(set:Array<String>):Array<String>
		return Save.setField(save, 'levels_complete', set);

	public static var keybinds(get, set):Map<String, Array<FlxKey>>;

	static function get_keybinds():Map<String, Array<FlxKey>>
		return Save.getField(save, 'keybinds');

	static function set_keybinds(set:Map<String, Array<FlxKey>>):Map<String, Array<FlxKey>>
		return Save.setField(save, 'keybinds', set);
}
