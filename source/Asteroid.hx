package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import flixel.math.FlxPoint;
import flixel.system.FlxAssets.FlxGraphicAsset;

class Asteroid extends FlxSprite {

  public function new(?X:Float=0, ?Y:Float=0) {
    super(X, Y);
    makeGraphic(16, 16, FlxColor.WHITE);
    velocity.set(Std.random(1000), Std.random(1000));
  }

  override public function update(elapsed:Float):Void {
    FlxSpriteUtil.screenWrap(this);
    super.update(elapsed);
  }

}
