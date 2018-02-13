
import haxe.unit.TestCase;
import haxe.unit.TestRunner;

class TestEtudiant extends TestCase {
	function testNew() {
		var e : Etudiant;
		e = new Etudiant("Bordage","Pierre");
		assertEquals("Bordage",e.nom);
		assertEquals("Pierre", e.prenom);
		trace(e.getNom());
		trace(e.getPrenom());
	}
	function testClasse() {
		var e : Etudiant;
		e = new Etudiant("Bordage","Pierre");
		e.classe = "sio1";
		assertEquals("sio1", e.classe);
		}
}


class Tests {
	public static function main() {
		var r : TestRunner = new TestRunner();
		r.add(new TestEtudiant());
		r.run();
	}
}