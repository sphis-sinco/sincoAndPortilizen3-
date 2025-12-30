package backend.save;

import flixel.util.FlxSave;

class Save
{
	public static function getField(save:FlxSave, field:String):Dynamic
	{
		if (!save.isBound)
			return null;

		return Reflect.field(save.data, field);
	}

	public static function setField(save:FlxSave, field:String, set:Dynamic):Dynamic
	{
		if (save.isBound)
			Reflect.setField(save.data, field, set);

		return getField(save, field);
	}
}