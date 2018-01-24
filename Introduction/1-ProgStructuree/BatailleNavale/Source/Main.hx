import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

typedef Navire = {
	var x : Int;
	var y : Int;
	var bmp : Bitmap;
	var mer : Sprite;
}

class Main extends Sprite {
	
	function dessinerMer() : Sprite {
		var mer : Sprite = new Sprite();
		var pixels : BitmapData = Assets.getBitmapData("assets/mer.png"); //chargement des 														//données de l'image
		for (i in 0...15) { //pour chaque ligne
			for (j in 0...15) { //pour chaque colonne – cf for (j=0; j<15; j++)
				var bmp : Bitmap = new Bitmap(pixels); //création d'une image
				mer.addChild(bmp);	//ajout (affichage) de l'image sur le « calque »
				bmp.x = i * 32;		//positionnement de l'image (de taille 32x32)
				bmp.y = j * 32;
			}
		}
		return mer;
	}

	public function dessinerNavire(nav : Navire) {
		nav.bmp = new Bitmap(Assets.getBitmapData("assets/navire.png"));
		nav.mer.addChild(nav.bmp);	//affichage du bateau sur la mer
		nav.bmp.x = nav.x * 32;		//positionnement de l'image (de taille 32x32)
		nav.bmp.y = nav.y * 32;
	}


	public function new () {
		
		super ();
		var laMer : Sprite = dessinerMer();
		addChild(laMer);		//ajout de la mer au calque qui recouvre la scène
		laMer.x = 160; //centrage: (800-15*32)/2
		laMer.y = 60;

		var n1 : Navire = { x : 5, y : 5, mer : laMer, bmp : null }; //pas d'image pour l'instant
		var n2 : Navire = { x : 10, y : 10, mer : laMer, bmp : null };
		dessinerNavire(n1);
		dessinerNavire(n2);
		
	}	
	
}