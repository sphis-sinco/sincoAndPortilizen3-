package backend.controls;

import flixel.input.keyboard.FlxKey;

class ControlHolder
{
	public static var keybinds:Map<String, Array<FlxKey>> = [
		'ui_cancel' => [ESCAPE],
		'ui_left' => [LEFT, A],
		'ui_down' => [DOWN, S],
		'ui_up' => [UP, W],
		'ui_right' => [RIGHT, D],
		'game_pause' => [ENTER],
		'game_left' => [LEFT, A],
		'game_down' => [DOWN, S],
		'game_up' => [UP, W],
		'game_right' => [RIGHT, D],
	];

	public var ui_cancel:Control;
	public var ui_left:Control;
	public var ui_down:Control;
	public var ui_up:Control;
	public var ui_right:Control;

	public var game_pause:Control;
	public var game_left:Control;
	public var game_down:Control;
	public var game_up:Control;
	public var game_right:Control;

	public function new()
	{
		updateKeybinds();
	}

	public function updateKeybinds()
	{
		for (key => value in keybinds)
		{
			trace('Updated keybind: $key to $value');
			Reflect.setField(this, key, new Control(value));
		}
	}
}
