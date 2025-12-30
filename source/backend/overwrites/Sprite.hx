package backend.overwrites;

import flixel.FlxG;
import flixel.util.FlxSignal;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxSprite;

class Sprite extends FlxSprite
{
	public static var SCALE:Float = 2.0;

	public var scale_offset:Float = 0.0;

	override public function new(graphic_simple:FlxGraphicAsset, ?scale_offset:Float = 0, ?x:Float, ?y:Float)
	{
		super(x, y, graphic_simple);

		this.scale_offset = scale_offset;
		resetScale();
	}

	public function resetScale()
	{
		scale.set(SCALE - scale_offset, SCALE - scale_offset);
		updateHitbox();
	}

	public var did_mouse_overlap:Bool = true;
	public var on_mouse_overlap:FlxSignal = new FlxSignal();
	public var on_mouse_unoverlap:FlxSignal = new FlxSignal();
	public var on_mouse_click_left:FlxSignal = new FlxSignal();
	public var on_mouse_click_right:FlxSignal = new FlxSignal();

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.mouse.overlaps(this))
		{
			did_mouse_overlap = true;
			on_mouse_overlap.dispatch();

			if (FlxG.mouse.justReleased)
				on_mouse_click_left.dispatch();
			if (FlxG.mouse.justReleasedRight)
				on_mouse_click_right.dispatch();
		}
		else
		{
			if (did_mouse_overlap)
			{
				did_mouse_overlap = false;
				on_mouse_unoverlap.dispatch();
			}
		}
	}
}
