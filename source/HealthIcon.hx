package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 21], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 22], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 22], 0, false, isPlayer);
		animation.add('spirit', [23, 23], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);
		animation.add('baby', [24, 25], 0, false, isPlayer);
		animation.add('homer', [26	, 27], 0, false, isPlayer);	
		animation.add('freddy', [28, 29], 0, false, isPlayer);
		animation.add('scout', [30, 30], 0, false, isPlayer);
		animation.add('miku', [31, 32], 0, false, isPlayer);
		animation.add('pewdiepie', [33, 34], 0, false, isPlayer);		
		animation.add('tinky', [35, 36], 0, false, isPlayer);
		animation.add('monstershit', [19, 20], 0, false, isPlayer);
		animation.add('running-goblin', [37, 38], 0, false, isPlayer);
		animation.add('evil-baby', [39, 40], 0, false, isPlayer);
		animation.add('gametoons', [41, 42], 0, false, isPlayer);
		animation.add('screamer', [43, 43], 0, false, isPlayer);
		animation.add('alien', [16], 0, false, isPlayer);
		animation.add('bob', [44, 45], 0, false, isPlayer);
		animation.add('player-baby', [39,25], 0, false, isPlayer);
		animation.add('bob-ron', [46, 47], 0, false, isPlayer);
		animation.add('ron', [46, 47], 0, false, isPlayer);
		animation.add('bobcreature', [48, 49, 50, 49], 4, true, isPlayer);
		animation.add('bobdead', [51], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
