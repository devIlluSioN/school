package;


import openfl.display.Sprite;


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
	
	public function new () {
		
		super ();
		var laMer : Sprite = dessinerMer();
		addChild(laMer);		//ajout de la mer au calque qui recouvre la scène
		laMer.x = 160; //centrage: (800-15*32)/2
		laMer.y = 60;
		
		var n1 : Navire = new Navire(5, 5, laMer);
		var n2 : Navire = new Navire(10, 10, laMer);
		n1.dessiner();
		n2.dessiner();	
	}
	
	
}