import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.events.MouseEvent;
import openfl.Lib;


class Main extends Sprite {
	public static inline var TAILLE : Int = 32; //static inline → constante
	public static inline var NBNAV : Int = 4;
	var mer : Mer;
	var merIA : Mer;
	var nbNav : Int;
	public static inline var size = 5; //nombre de collone et de ligne
	var listofpos = new List<Int>();
	
	public function new () {
		
		super ();
		Lib.application.window.resize(1080,600); //Taille Fenetre
		nbNav = NBNAV;
		mer = new Mer(size);
		merIA = new Mer(size);
		addChild(mer.getSpr());
		addChild(merIA.getSpr());
		mer.getSpr().x = (544 - size * TAILLE) / 2;
		mer.getSpr().y = (600 - size * TAILLE) / 2;
		merIA.getSpr().x = (1625 - size * TAILLE) / 2;
		merIA.getSpr().y = (600 - size * TAILLE) / 2;
		this.listofpos = dolist();
		for (i in 0...6) // 0 to 9
			IAnavire();
		mer.getSpr().addEventListener(MouseEvent.CLICK, onMerClick); 
		merIA.getSpr().addEventListener(MouseEvent.CLICK, onMerIAClick);//définit la	
									//fonction à exécuter en cas de clic sur la mer
	}

	public function dolist() : List<Int> //LIST OU INT ??
	{

		var liste = new List<Int>();

		for(i in 0...(size*size)) //Nombre de case = size*size
		{
			liste.add(i);
		}
		return liste;

	}

	public function IAPlay()
	{
		var pos : Int = Std.random(listofpos.length);
		var j = 0;
		var item : Int = null;
		for(elem in listofpos) {
			if (j == pos) {
				item = elem;
			}
			j++;
		}
		var x : Int = Std.int(item / size);
		var y : Int = Std.int(item % size);

		listofpos.remove(item);
		if(mer.EstLibre(x,y))
		{
			mer.DetruireNavire(x,y);
		}
		else
		{
			mer.Tirechoue(x,y);
		}

	}

	public function onMerClick(e : MouseEvent) {
		var x : Int = Math.floor(e.localX / TAILLE);
		var y : Int = Math.floor(e.localY / TAILLE);
		var n : Navire = new Navire(x, y, mer);
		if (nbNav > 0) { //de NBNAV à 1
			mer.ajouterNavire(n);
			nbNav--;
		} /*else if (nbNav == 0) {
			//mer.cacherNavire();	
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
			}*/
	}

	public function onMerIAClick(e : MouseEvent) {
		//for (n in merIA.getNavires()){
		//	trace(n);
		//}
		var x : Int = Math.floor(e.localX / TAILLE);
		var y : Int = Math.floor(e.localY / TAILLE);
		if(merIA.EstLibre(x,y))
		{
			merIA.DetruireNavire(x,y);
		}
		else
		{
			merIA.Tirechoue(x,y);
		}
		IAPlay();
	}


	public function IAnavire(){
		var x : Int = 0;
		var y : Int = 0;
		do{
			x = Std.random(size + 1);
			y = Std.random(size + 1);
		}while(merIA.EstLibre(x,y));
		var n : Navire = new Navire(x, y, merIA);
		merIA.ajouterNavire(n);
		merIA.cacherNavire();
	}
}