// Generated by Haxe 3.4.4

#pragma warning disable 109, 114, 219, 429, 168, 162
public class TestEtudiant : global::haxe.unit.TestCase {
	
	public TestEtudiant(global::haxe.lang.EmptyObject empty) : base(global::haxe.lang.EmptyObject.EMPTY) {
	}
	
	
	public TestEtudiant() : base(global::haxe.lang.EmptyObject.EMPTY) {
		global::TestEtudiant.__hx_ctor__TestEtudiant(this);
	}
	
	
	public static void __hx_ctor__TestEtudiant(global::TestEtudiant __hx_this) {
		global::haxe.unit.TestCase.__hx_ctor_haxe_unit_TestCase(__hx_this);
	}
	
	
	public virtual void testNew() {
		unchecked {
			global::Etudiant e = new global::Etudiant("Bordage", "Pierre");
			this.assertEquals<object>(((object) ("Bordage") ), ((object) (e.nom) ), ((object) (new global::haxe.lang.DynamicObject(new int[]{302979532, 1547539107, 1648581351}, new object[]{"testNew", "TestEtudiant", "Tests.hx"}, new int[]{1981972957}, new double[]{((double) (9) )})) ));
			this.assertEquals<object>(((object) ("Pierre") ), ((object) (e.prenom) ), ((object) (new global::haxe.lang.DynamicObject(new int[]{302979532, 1547539107, 1648581351}, new object[]{"testNew", "TestEtudiant", "Tests.hx"}, new int[]{1981972957}, new double[]{((double) (10) )})) ));
			global::haxe.Log.trace.__hx_invoke2_o(default(double), e.getNom(), default(double), new global::haxe.lang.DynamicObject(new int[]{302979532, 1547539107, 1648581351}, new object[]{"testNew", "TestEtudiant", "Tests.hx"}, new int[]{1981972957}, new double[]{((double) (11) )}));
			global::haxe.Log.trace.__hx_invoke2_o(default(double), e.getPrenom(), default(double), new global::haxe.lang.DynamicObject(new int[]{302979532, 1547539107, 1648581351}, new object[]{"testNew", "TestEtudiant", "Tests.hx"}, new int[]{1981972957}, new double[]{((double) (12) )}));
		}
	}
	
	
	public virtual void testClasse() {
		unchecked {
			global::Etudiant e = new global::Etudiant("Bordage", "Pierre");
			e.classe = "sio1";
			this.assertEquals<object>(((object) ("sio1") ), ((object) (e.classe) ), ((object) (new global::haxe.lang.DynamicObject(new int[]{302979532, 1547539107, 1648581351}, new object[]{"testClasse", "TestEtudiant", "Tests.hx"}, new int[]{1981972957}, new double[]{((double) (18) )})) ));
		}
	}
	
	
	public override object __hx_getField(string field, int hash, bool throwErrors, bool isCheck, bool handleProperties) {
		unchecked {
			switch (hash) {
				case 503643935:
				{
					return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "testClasse", 503643935)) );
				}
				
				
				case 1036140334:
				{
					return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "testNew", 1036140334)) );
				}
				
				
				default:
				{
					return base.__hx_getField(field, hash, throwErrors, isCheck, handleProperties);
				}
				
			}
			
		}
	}
	
	
	public override object __hx_invokeField(string field, int hash, global::Array dynargs) {
		unchecked {
			switch (hash) {
				case 503643935:
				{
					this.testClasse();
					break;
				}
				
				
				case 1036140334:
				{
					this.testNew();
					break;
				}
				
				
				default:
				{
					return base.__hx_invokeField(field, hash, dynargs);
				}
				
			}
			
			return null;
		}
	}
	
	
}



#pragma warning disable 109, 114, 219, 429, 168, 162
public class Tests : global::haxe.lang.HxObject {
	
	public static void Main(){
		global::cs.Boot.init();
		{
			global::Tests.main();
		}
	}
	public Tests(global::haxe.lang.EmptyObject empty) {
	}
	
	
	public Tests() {
		global::Tests.__hx_ctor__Tests(this);
	}
	
	
	public static void __hx_ctor__Tests(global::Tests __hx_this) {
	}
	
	
	public static void main() {
		global::haxe.unit.TestRunner r = new global::haxe.unit.TestRunner();
		r.@add(new global::TestEtudiant());
		r.run();
	}
	
	
}


