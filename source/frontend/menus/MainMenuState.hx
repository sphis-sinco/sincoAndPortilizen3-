package frontend.menus;

import backend.overwrites.Sprite;
import backend.overwrites.State;

class MainMenuState extends State
{
	public var logo:Sprite = new Sprite('logo'.getImageFile(), 0.5);
	public var play:Sprite = new Sprite('mainmenu/play'.getImageFile(), 0);

	override public function create()
	{
		super.create();

		logo.screenCenter();
		logo.y -= logo.height * 0.5;
		add(logo);

		play.screenCenter();
		play.y += play.height * 0.5;
		add(play);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
