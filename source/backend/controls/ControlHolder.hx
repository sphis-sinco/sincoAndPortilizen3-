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

	public var ui_cancel:Control = new Control(keybinds.get('ui_cancel'));
	public var ui_left:Control = new Control(keybinds.get('ui_left'));
	public var ui_down:Control = new Control(keybinds.get('ui_down'));
	public var ui_up:Control = new Control(keybinds.get('ui_up'));
	public var ui_right:Control = new Control(keybinds.get('ui_right'));

	public var game_pause:Control = new Control(keybinds.get('game_pause'));
	public var game_left:Control = new Control(keybinds.get('game_left'));
	public var game_down:Control = new Control(keybinds.get('game_down'));
	public var game_up:Control = new Control(keybinds.get('game_up'));
	public var game_right:Control = new Control(keybinds.get('game_right'));

	public function new() {}
}
