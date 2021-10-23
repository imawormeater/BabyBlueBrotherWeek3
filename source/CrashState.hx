package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionableState;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxCamera;
import openfl.Lib;
//lol this doesnt work but i dont give a shit lol so if you type poop it just crashes thats what you get 
class CrashState extends FlxState
{
    var soyjak:FlxSprite;
	override public function create():Void 
	{
		super.create();	
        FlxG.sound.play(Paths.sound('boss'));
		soyjak = new FlxSprite(0, 0).loadGraphic(Paths.image('soyjak'));
        soyjak.screenCenter(X);
        add(soyjak);
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);

	}
	
}