class Etudiant {
	var nom : String;
	var prenom : String;
	public var classe : String;

	public function getNom() : String
	{
		return this.nom;
	}

	public function getPrenom() : String
	{
		return this.prenom;
	}

	public function new(n : String, p : String) {
		this.nom = n;
		this.prenom = p;
	}
}