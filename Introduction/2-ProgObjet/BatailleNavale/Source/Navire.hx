import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.Assets;

class Navire {
	private var x : Int;
	private var y : Int;
	private var mer : Sprite;
	private var bmp : Bitmap;
	
	public function new(x : Int, y : Int, laMer : Sprite) {
		if (x>=0 && x<15) this.x = x;
		else this.x = 0;
		if (y>=0 && y<15) this.y = y;
		else this.y = 0;
		this.mer = laMer;
	}
	
	public function dessiner() {
		this.bmp = new Bitmap(Assets.getBitmapData("assets/navire.png"));
		this.mer.addChild(this.bmp);
		this.bmp.x = this.x * 32;
		this.bmp.y = this.y * 32;
	}
}
