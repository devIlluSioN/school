import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.events.MouseEvent;


class Main extends Sprite {
	public static inline var TAILLE : Int = 32; //static inline → constante
	public static inline var NBNAV : Int = 4;
	var mer : Mer;
	var merIA : Mer;
	var nbNav : Int;
	
	public function new () {
		
		super ();
		nbNav = NBNAV;
		mer = new Mer(15);
		merIA = new Mer(15);
		addChild(mer.getSpr());
		addChild(merIA.getSpr());
		mer.getSpr().x = (544 - 15 * TAILLE) / 2;
		mer.getSpr().y = (600 - 15 * TAILLE) / 2;
		merIA.getSpr().x = (1625 - 15 * TAILLE) / 2;
		merIA.getSpr().y = (600 - 15 * TAILLE) / 2;
		for (i in 0...6) // 0 to 9
			IAnavire();
		mer.getSpr().addEventListener(MouseEvent.CLICK, onMerClick); //définit la	
									//fonction à exécuter en cas de clic sur la mer
	}

	public function onMerClick(e : MouseEvent) {
		var x : Int = Math.floor(e.localX / TAILLE);
		var y : Int = Math.floor(e.localY / TAILLE);
		var n : Navire = new Navire(x, y, mer);
		if (nbNav > 0) { //de NBNAV à 1
			mer.ajouterNavire(n);
			nbNav--;
		} else if (nbNav == 0) {
			mer.cacherNavire();	
			nbNav--;
		} else if (nbNav >= -NBNAV) { //de -1 à -NBNAV
			if (n != null) {
				mer.montrerNavire(n);
				nbNav--;
			}
		} 
		else { //nbNav < -NBNAV → on recommence
			nbNav = NBNAV;
			mer.supprimerNavire(n);
			}
		}
	public function IAnavire(){
		do{
			var x : Int = Std.random(16);
			var y : Int = Std.random(16);
		}while(merIA.EstLibre(x,y));
		var n : Navire = new Navire(x, y, merIA);
		merIA.ajouterNavire(n);
	}
	}