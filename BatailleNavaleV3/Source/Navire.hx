import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class Navire {
    var x : Int;
    var y : Int;
    var mer : Mer;
    public var bmp : Bitmap;

    public function new(x : Int, y : Int, laMer : Mer) {
        if (x>=0 && x<Main.size) this.x=x;
        else this.x=0;
        if (y>=0 && y<Main.size) this.y=y;
        else this.y=0;
        bmp = new Bitmap(Assets.getBitmapData("assets/navire.png"));
    }

    public function getBmp() : Bitmap {
        return bmp;
    }

    public function getX() : Int {
        return this.x;
    }

    public function getY() : Int {
        return this.y;    
    }
}