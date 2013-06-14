package ;

import openfl.Assets;
import flash.geom.Rectangle;
import flash.net.SharedObject;
import org.flixel.FlxButton;
import org.flixel.FlxG;
import org.flixel.FlxPath;
import org.flixel.FlxSave;
import org.flixel.FlxSprite;
import org.flixel.FlxState;
import org.flixel.FlxText;
import org.flixel.util.FlxMath;

class MenuState extends FlxState 
{
	var text:TypeText;
	
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void 
	{
		FlxG.bgColor = 0xff131c1b;
		FlxG.mouse.show();
		
		text = new TypeText(10, 200, FlxG.width, "Some test text for testing purposes :))))))))))))))\nSecond line test", textCallback, "assets/text.mp3");
		add(text);
		
		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void 
	{
		super.destroy();
	}
	
	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void 
	{
		super.update();
	}	
	
	private function textCallback():Void
	{
		text.resetMessage("Some second test text for testing purposes :))))))))))))))");
	}
}