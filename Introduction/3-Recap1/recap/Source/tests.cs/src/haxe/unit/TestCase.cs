// Generated by Haxe 3.4.4

#pragma warning disable 109, 114, 219, 429, 168, 162
namespace haxe.unit {
	public class TestCase : global::haxe.lang.HxObject {
		
		public TestCase(global::haxe.lang.EmptyObject empty) {
		}
		
		
		public TestCase() {
			global::haxe.unit.TestCase.__hx_ctor_haxe_unit_TestCase(this);
		}
		
		
		public static void __hx_ctor_haxe_unit_TestCase(global::haxe.unit.TestCase __hx_this) {
		}
		
		
		public global::haxe.unit.TestStatus currentTest;
		
		public virtual void setup() {
		}
		
		
		public virtual void tearDown() {
		}
		
		
		public virtual void print(object v) {
			global::haxe.unit.TestRunner.print.__hx_invoke1_o(default(double), v);
		}
		
		
		public virtual void assertTrue(bool b, object c) {
			this.currentTest.done = true;
			if (( b != true )) {
				this.currentTest.success = false;
				this.currentTest.error = "expected true but was false";
				this.currentTest.posInfos = c;
				throw global::haxe.lang.HaxeException.wrap(this.currentTest);
			}
			
		}
		
		
		public virtual void assertFalse(bool b, object c) {
			this.currentTest.done = true;
			if (( b == true )) {
				this.currentTest.success = false;
				this.currentTest.error = "expected false but was true";
				this.currentTest.posInfos = c;
				throw global::haxe.lang.HaxeException.wrap(this.currentTest);
			}
			
		}
		
		
		public virtual void assertEquals<T>(T expected, T actual, object c) {
			this.currentTest.done = true;
			if (( ! (global::haxe.lang.Runtime.eq(actual, expected)) )) {
				this.currentTest.success = false;
				string tmp = global::haxe.lang.Runtime.concat(global::haxe.lang.Runtime.concat(global::haxe.lang.Runtime.concat("expected \'", global::Std.@string(expected)), "\' but was \'"), global::Std.@string(actual));
				this.currentTest.error = global::haxe.lang.Runtime.concat(tmp, "\'");
				this.currentTest.posInfos = c;
				throw global::haxe.lang.HaxeException.wrap(this.currentTest);
			}
			
		}
		
		
		public override object __hx_setField(string field, int hash, object @value, bool handleProperties) {
			unchecked {
				switch (hash) {
					case 93036843:
					{
						this.currentTest = ((global::haxe.unit.TestStatus) (@value) );
						return @value;
					}
					
					
					default:
					{
						return base.__hx_setField(field, hash, @value, handleProperties);
					}
					
				}
				
			}
		}
		
		
		public override object __hx_getField(string field, int hash, bool throwErrors, bool isCheck, bool handleProperties) {
			unchecked {
				switch (hash) {
					case 752681381:
					{
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "assertEquals", 752681381)) );
					}
					
					
					case 2105872637:
					{
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "assertFalse", 2105872637)) );
					}
					
					
					case 1330771252:
					{
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "assertTrue", 1330771252)) );
					}
					
					
					case 1217091629:
					{
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "print", 1217091629)) );
					}
					
					
					case 1818678820:
					{
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "tearDown", 1818678820)) );
					}
					
					
					case 2049945213:
					{
						return ((global::haxe.lang.Function) (new global::haxe.lang.Closure(this, "setup", 2049945213)) );
					}
					
					
					case 93036843:
					{
						return this.currentTest;
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
					case 752681381:
					{
						this.assertEquals<object>(((object) (dynargs[0]) ), ((object) (dynargs[1]) ), ((object) (dynargs[2]) ));
						break;
					}
					
					
					case 2105872637:
					{
						this.assertFalse(global::haxe.lang.Runtime.toBool(dynargs[0]), dynargs[1]);
						break;
					}
					
					
					case 1330771252:
					{
						this.assertTrue(global::haxe.lang.Runtime.toBool(dynargs[0]), dynargs[1]);
						break;
					}
					
					
					case 1217091629:
					{
						this.print(dynargs[0]);
						break;
					}
					
					
					case 1818678820:
					{
						this.tearDown();
						break;
					}
					
					
					case 2049945213:
					{
						this.setup();
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
		
		
		public override void __hx_getFields(global::Array<object> baseArr) {
			baseArr.push("currentTest");
			base.__hx_getFields(baseArr);
		}
		
		
	}
}


