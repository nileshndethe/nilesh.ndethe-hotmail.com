public virtual with sharing class DemoBaseClass2 {
	public DemoBaseClass2() {
		
	}

	public Boolean demoBaseClassMethod2() {
		return true;
	}

	public virtual Boolean demoBaseClassOverrideMethod1() {
		return true;
	}

	public virtual String demoBaseClassOverrideMethod2(String value) {
		return value;
	}  
}