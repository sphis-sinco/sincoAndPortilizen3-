package backend.overwrites;

import flixel.FlxG;
import flixel.FlxState;

class State extends FlxState
{
	override public function new()
	{
		super();
	}

	override function create()
	{
		super.create();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	public function switchState(state:FlxState)
	{
		FlxG.switchState(() -> state);
	}
}
