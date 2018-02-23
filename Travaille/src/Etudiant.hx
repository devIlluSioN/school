/* 
   
 */
class Etudiant {
    var nom : String;
    var prenom : String;
    var classe : Section;

    public function getNom() : String {
        var retour = nom;
        return retour;
    }

    public function getPrenom() : String {
        var retour = prenom;
        return retour;
    }

    public function new(n : String, p : String, c : Section) {
        this.nom = n;
        this.prenom = p;
        this.section= c;
    }

}
