package backend;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.graphics.FlxGraphic;
import flixel.FlxG;
import flixel.FlxBasic;

class MouseManager extends FlxBasic
{
	public var state:String = 'default';

	public var state_graphic(get, never):FlxGraphic;

	function get_state_graphic():FlxGraphic
	{
		var graphic:FlxGraphicAsset = 'mouse/$state'.getImageFile();
		return graphic;
	}

	override public function new()
	{
		super();

        resetState();
	}

	public function resetState()
	{
		setState('default');
	}

	public function setState(state:String)
	{
		this.state = state;
		FlxG.mouse.load('mouse/$state'.getImageFile());
	}
}
