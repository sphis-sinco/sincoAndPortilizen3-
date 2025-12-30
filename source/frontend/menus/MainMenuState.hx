package frontend.menus;

import backend.overwrites.Sprite;
import backend.overwrites.State;

class MainMenuState extends State
{
	public var logo:Sprite = new Sprite('logo'.getImageFile());

	override public function create()
	{
		super.create();

		logo.screenCenter();
		add(logo);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
