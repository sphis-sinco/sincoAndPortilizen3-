package backend.controls;

import flixel.input.keyboard.FlxKey;

class Control
{
	public var keys:Array<FlxKey> = [];

	public function new(keys:Array<FlxKey>)
	{
		this.keys = keys;
	}

	public var pressed(get, never):Bool;

	function get_pressed():Bool
		return Global.keysPressed(keys);

	public var just_pressed(get, never):Bool;

	function get_just_pressed():Bool
		return Global.keysJustPressed(keys);

	public var just_released(get, never):Bool;

	function get_just_released():Bool
		return Global.keysJustReleased(keys);
}
