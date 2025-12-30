package backend.overwrites;

import flixel.text.FlxText;
import flixel.FlxG;
import flixel.FlxState;

class State extends FlxState
{
	public var watermark_left:FlxText;
	public var watermark_right:FlxText;

	override function create()
	{
		super.create();

		watermark_left = makeBaseText(Global.VERSION, LEFT, FlxG.width / 2);
		watermark_right = makeBaseText('', RIGHT, FlxG.width / 2);
		add(watermark_left);
		add(watermark_right);

		if (Global.BUILD_DEBUG)
			watermark_left.text += ' (DEBUG)';
	}

	public function makeBaseText(text:String, alignment:FlxTextAlign = LEFT, ?fieldWidth = 0.0):FlxText
	{
		var new_text:FlxText = new FlxText(0, 0, fieldWidth, text, 8);
		new_text.alignment = alignment;

		return new_text;
	}

	public function switchState(state:FlxState)
	{
		FlxG.switchState(() -> state);
	}
}
