import haxe.unit.TestCase;
import haxe.unit.TestRunner;

class Main extends TestCase {
    static function main() {
        var runner = new TestRunner();
        runner.add(new Main()); //ajoute un cas de test
        runner.run(); //lance les tests
    }

    function new() { super(); } //constructeur du cas de test

    function testNewEtudiantNullName() {
        var e : Etudiant;
        try { //essayer
            e = new Etudiant(null, ""); //devrait lever une exception
            assertFalse(true); //cette instruction ne devrait jamais être exécutée
        } catch (e : String) { //interception de l’exception
            assertFalse(false); //effectivement, la création ne devrait pas réussir
        }
    }

    function testNewEtudiantOk() {
        var e = new Etudiant("Simmons", "Dan");
        assertEquals("Simmons", e.getNom());
        assertEquals("Dan", e.getPrenom()); //le prénom de l’étudiant devrait être "Dan"
        assertEquals(null, e.classe);
    }
}
