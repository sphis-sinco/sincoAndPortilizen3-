package backend.overwrites;

import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxSprite;

class Sprite extends FlxSprite
{
	public static var SCALE:Float = 2.0;

    public var scaleOffset:Float = 0.0;

	override public function new(simpleGraphic:FlxGraphicAsset, ?scaleOffset:Float = 0, ?x:Float, ?y:Float)
	{
		super(x, y, simpleGraphic);

        this.scaleOffset = scaleOffset;
		resetScale();
	}

	public function resetScale()
	{
		scale.set(SCALE - scaleOffset, SCALE - scaleOffset);
		updateHitbox();
	}


}
