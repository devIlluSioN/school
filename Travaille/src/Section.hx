/* 
   
 */
class Section {
    var nom : String;
    var specialite : String;
    var effectifMax : Int;
    var etudiant : Array<Etudiant>;

    public function getSpecialite() : String {
        return specialite;
    }

    public function getNom() : String {
        return nom;
    }

    public function new(n : String, s : String, eM : Int) {
        if (etudiants.length < effectifMax)
            etudiants.push(new Etudiant(n,p,this))
    }

    public function ajoutEtudiant(n : String, p : String) {
        
    }

    public function getEtudiant() : Array<Etudiant> {
    
    }

}
