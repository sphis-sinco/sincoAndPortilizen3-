package;

import backend.Global;
import backend.overwrites.State;
import frontend.menus.MainMenuState;

class InitState extends State
{
	override public function create()
	{
		super.create();

		trace('Version: ' + Global.VERSION);
		trace('Defines: ' + Global.DEFINES);

		switchState(new MainMenuState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
