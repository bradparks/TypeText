package ;

import flash.Lib;
import org.flixel.FlxGame;
	
class GameClass extends FlxGame 
{
	
	public function new() 
	{
		super(640, 480, MenuState, 1, 30, 30);
	}
}
