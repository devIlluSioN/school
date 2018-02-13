class Etudiant {
    var nom : String;
    var prenom : String;
    public var classe : String;

    public function new(nom : String, prenom : String) {
        if (setNom(nom) == null) {
            throw "'nom' should not be null or empty !";
        }
        if (setPrenom(prenom) == null) {
            throw "'prenom' should not be null or empty !";
        }
    }

    public function setNom(nom : String) : String {
        if (nom != null && nom != "") {
            this.nom = nom;
        }
        return this.nom;
    }

    public function setPrenom(prenom : String) : String {
        if (prenom != null && prenom != "") {
            this.prenom = prenom;
        }
        return this.prenom;
    }
    public function getNom() : String {
        return this.nom;
    }

    public function getPrenom() : String {
        return this.prenom;
    }
}
