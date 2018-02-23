import openfl.display.Sprite;
import openfl.Assets;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.DisplayObjectContainer;


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
        if((x>=0 && x< Main.size) && (y>=0 && y< Main.size)) return true;
        else return false;
        
    }

    public function ajouterNavire(n : Navire) {
        this.navire.push(n); //Ajoute au tableau
		var bmp =n.getBmp();
        this.spr.addChild(n.getBmp()); //Ajoute un sprite
        bmp.x=n.getX()*Main.TAILLE;
        bmp.y=n.getY()*Main.TAILLE;

    }

    public function supprimerNavire(n : Navire) {
        this.navire.remove(n); //retire du tableau
		this.spr.removeChild(n.getBmp());
    }

    public function EstLibre(x : Int, y : Int) : Bool
    {
        for (n in navire)
        {
            if (n.getX() == x && n.getY() == y)
                return(true);
        }
        return (false);
    }

    public function DetruireNavire(x : Int, y : Int) : Void
    {
        for (n in navire)
        {
            if (n.getX() == x && n.getY() == y)
            {
                //spr.removeChild(n.bmp);
                n.getBmp().visible = true;
                n.bmp.bitmapData = Assets.getBitmapData("assets/explosion.png");
                break;
                //spr.addChild(n.bmp);
            }

        }
    }
    public function Tirechoue(x : Int, y : Int)
    {
                var point_Rouge : Bitmap = new Bitmap(Assets.getBitmapData("assets/rond_rouge.png"));
                point_Rouge.x = x * Main.TAILLE;
                point_Rouge.y = y * Main.TAILLE;
                this.spr.addChild(point_Rouge);

    }
    public function getNavires() : Array<Navire>{
        return navire.copy();
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
/*
    public function dejatire(x : Int, y : Int) : Bool{
        trace(this.getObjectsUnderPoint(new Point(x*32,y*32))); 
        return(true);
    }
*/
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