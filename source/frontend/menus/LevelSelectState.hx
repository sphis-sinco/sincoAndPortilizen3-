package frontend.menus;

import flixel.FlxG;
import backend.overwrites.Sprite;
import backend.overwrites.State;

class LevelSelectState extends State
{
	public var console_center:Sprite = new Sprite('levelselect/console_center'.getImageFile());
	public var console_side_left:Sprite = new Sprite('levelselect/console_side'.getImageFile());
	public var console_side_right:Sprite = new Sprite('levelselect/console_side'.getImageFile());

	override function create()
	{
		super.create();

		for (console in [console_center, console_side_left, console_side_right])
		{
            console.screenCenter();
            console.y = FlxG.height - console.height;

			add(console);
		}

        console_side_left.x = 0;
        console_side_right.flipX = true;
        console_side_right.x = FlxG.width - console_side_right.width;
	}
}
