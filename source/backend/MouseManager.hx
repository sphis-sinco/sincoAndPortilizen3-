package backend;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.graphics.FlxGraphic;
import flixel.FlxG;
import flixel.FlxBasic;

class MouseManager extends FlxBasic
{
	public static var state:String = 'default';

	override public function new()
	{
		super();

        resetState();
	}

	public static function resetState()
	{
		setState('default');
	}

	public static function setState(newstate:String)
	{
		state = newstate;
		FlxG.mouse.load('mouse/$state'.getImageFile(), 1, -16, -16);
	}
}
