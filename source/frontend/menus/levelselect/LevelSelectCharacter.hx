package frontend.menus.levelselect;

import flixel.util.FlxTimer;
import backend.overwrites.Sprite;

class LevelSelectCharacter extends Sprite
{
	public function startAnimationTimer(currentAnimation:String, nextAnimation:String, time:Float)
	{
		animation.play(currentAnimation);

        if (currentAnimation == nextAnimation)
            return;

		new FlxTimer().start(time, function(t)
		{
			animation.play(nextAnimation);
		});
	}

	override public function new(char:String, ?scaleOffset:Float = 0)
	{
		super(null, scaleOffset);

		loadGraphic('levelselect/char_$char'.getImageFile(), true, 180, 180);
		animation.add('idle', [0], 24);
		animation.add('boop', [1], 24);
		animation.add('select', [2], 24);
		animation.add('cancel', [3], 24);

        startAnimationTimer('idle', 'idle', 0);
	}
}
