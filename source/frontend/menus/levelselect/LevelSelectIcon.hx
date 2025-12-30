package frontend.menus.levelselect;

import backend.overwrites.Sprite;

class LevelSelectIcon extends Sprite
{
    public var icon:String = '';

	override public function new(icon:String, ?scaleOffset:Float = 0)
	{
		super('levelselect/level-icons/$icon'.getImageFile(), scaleOffset);

        this.icon = icon;
	}
}
