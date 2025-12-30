package backend;

class AssetPaths
{
	public static var EXTENSIONS:Map<String, String> = ['image' => 'png', 'audio' => 'wav', 'text' => 'txt'];

	public static function getAssetPath(path:String):String
		return 'assets/$path';

	public static function getAudioPath(path:String):String
		return getAssetPath('audio/$path');

	public static function getDataPath(path:String):String
		return getAssetPath('data/$path');

	public static function getImagesPath(path:String):String
		return getAssetPath('images/$path');

	public static function getAudioFile(path:String, ?extension:String):String
		return getAudioPath('$path.${((extension != null) ? extension : EXTENSIONS.get('audio'))}');

	public static function getImageFile(path:String, ?extension:String):String
		return getImagesPath('$path.${((extension != null) ? extension : EXTENSIONS.get('image'))}');

	public static function getDataFileGeneral(path:String, extension:String):String
		return getDataPath('$path.$extension');

	public static function getDataFileText(path:String, ?extension:String):String
		return getDataFileGeneral(path, ((extension != null) ? extension : EXTENSIONS.get('text')));
}
