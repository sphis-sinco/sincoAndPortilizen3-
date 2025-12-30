package frontend.menus.levelselect;

import backend.overwrites.Sprite;

class LevelSelectSymbol extends Sprite
{
	override public function new(symbol:String, ?scaleOffset:Float = 0)
	{
		super('levelselect/level-symbols/$symbol'.getImageFile(), scaleOffset);
	}
}
