package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import flixel.math.FlxPoint;
import flixel.system.FlxAssets.FlxGraphicAsset;

class Asteroid extends FlxSprite {

  var maxSpeed:Int = 250;
  var angSpeed:Float = 0;
  var size:Int = 0;

  public function new(?X:Float=0, ?Y:Float=0) {
    super(X, Y);
    size = Std.random(24) + 8;
    makeGraphic(size, size, FlxColor.WHITE);
    velocity.set(Std.random(maxSpeed), Std.random(maxSpeed));
    this.angle = Std.random(90);
    this.angSpeed = Std.random(20)/20 - 0.5;
    switch (Std.random(4)) {
      case 0:
        this.x = 0;
        this.y = Std.random(FlxG.height);
      case 1:
        this.x = FlxG.width;
        this.y = Std.random(FlxG.height);
      case 2:
        this.x = Std.random(FlxG.width);
        this.y = 0;
      case 3:
        this.x = Std.random(FlxG.width);
        this.y = FlxG.height;
    }
  }

  override public function update(elapsed:Float):Void {
    FlxSpriteUtil.screenWrap(this);
    this.angle += this.angSpeed;
    super.update(elapsed);
  }

}
