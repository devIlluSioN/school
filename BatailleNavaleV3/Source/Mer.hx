import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class Mer {

    var spr : Sprite;
    var dimensions : Int;
    var navire : Array<Navire>;

    public function new(dimensions : Int) {
        this.dimensions = dimensions;
		this.navire = new Array();
		this.spr = new Sprite();
		var image : BitmapData = Assets.getBitmapData("assets/mer.png");
		for (i in 0...dimensions) {
			for (j in 0...dimensions) {
				var bmp : Bitmap = new Bitmap(image);
				this.spr.addChild(bmp);
				bmp.x = i * Main.TAILLE;
				bmp.y = j* Main.TAILLE;
			}
		}
    }

    public function getSpr() : Sprite {
        return spr;    
    }

    public function estSurLaMer(x : Int, y : Int) : Bool {
        if((x>=0 && x<15) && (y>=0 && y<15)) return true;
        else return false;
        
    }

    public function ajouterNavire(n : Navire) {
        this.navire.push(n);
		var bmp =n.getBmp();
        this.spr.addChild(n.getBmp());
        bmp.x=n.getX()*Main.TAILLE;
        bmp.y=n.getY()*Main.TAILLE;

    }

    public function supprimerNavire(n : Navire) {
        this.navire.remove(n);
		this.spr.removeChild(n.getBmp());
    }

    public function EstLibre(x : Int, y : Int) : Bool
    {
        for (n in navire)
        {
            if (n.getX() == x && n.getY() == y)
                return(True);
            return (False);
        }
    }

    public function chercherNavire(x : Int, y : Int) : Navire {
         var nc : Navire = null;
	    	for (n in navire) {
			    if (n.getX() == x && n.getY() == y) {
				    nc = n;
				    break; //met fin à la boucle
			}
    } 
    return nc;  
}

    public function cacherNavire() {
        for (n in navire) {
			n.getBmp().visible = false;
		}         
    }

    public function montrerNavire(n : Navire) {
        for (n in navire) {
			n.getBmp().visible = false;
    }

}
}