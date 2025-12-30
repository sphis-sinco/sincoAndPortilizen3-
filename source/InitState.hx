package;

import flixel.util.FlxSave;
import lime.app.Application;
import backend.save.NewSave;
import backend.save.OldSave;
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

		saveInit();

		switchState(new MainMenuState());
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}

	public function saveInit()
	{
		OldSave.save = new FlxSave();
		NewSave.save = new FlxSave();

		if (Global.BUILD_DEBUG)
		{
			OldSave.save.bind('SAP-debug', 'SAPTeam');
			NewSave.save.bind('SAP3-debug', 'Macohi');
		}
		else
		{
			OldSave.save.bind('SAP-release', 'SAPTeam');
			NewSave.save.bind('SAP3-release', 'Macohi');
		}

		// I don't care anymore lol
		// trace('Old save: ' + OldSave.save.data);
		trace('New save: ' + NewSave.save.data);

		NewSave.last_version = Global.VERSION;

		NewSave.save.flush();

		Application.current.onExit.add(function(l)
		{
			NewSave.save.flush();
		});
	}
}
