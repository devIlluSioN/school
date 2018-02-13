class Section {
    var etudiants : Array<Etudiant>;

    public function new() {
        etudiants = new Array();
    }

    public function ajoutEtudiant(e : Etudiant) : Section {
        if (e != null) {
            etudiants.push(e);
        }
        return this;
    }

    public function getNbEtudiants() : Int {
        return etudiants.length;
    }

    public function getEtudiants() : Array<Etudiant> {
        return etudiants.copy();
    }
}
