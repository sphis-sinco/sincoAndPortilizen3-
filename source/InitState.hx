package;

import backend.overwrites.State;
import frontend.menus.MainMenuState;

class InitState extends State
{
	override public function create()
	{
		super.create();

		switchState(new MainMenuState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
