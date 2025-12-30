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

		play.addLabeledFunction('scaleAndPosition', function(args:Map<String, Dynamic>)
		{
			play.scale_offset = args.get('scale_offset');
			play.resetScale();

			play.screenCenter();
			play.y += play.height * 0.5;
		});

		play.on_mouse_overlap.add(function()
		{
			play.runLabeledFunction('scaleAndPosition', ['scale_offset' => 0.2]);
		});
		play.on_mouse_unoverlap.add(function()
		{
			play.runLabeledFunction('scaleAndPosition', ['scale_offset' => 0]);
		});
		play.on_mouse_click_left.add(function()
		{
			switchState(new LevelSelectState());
		});
		add(play);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
