package backend.save;

import flixel.util.FlxSave;

class NewSave
{
	public static var save:FlxSave;

    public static var last_version(get, set):String;
    
    static function get_last_version():String
        return Save.getField(save, 'last_version');
    
    static function set_last_version(set:String):String
        return Save.setField(save, 'last_version', set);
}
