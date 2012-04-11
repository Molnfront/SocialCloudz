component extends="coldbox.system.testing.BaseTestCase" appMapping="/root"{
	
	function setUp(){
		super.setup();
	}	
	
	function testIndex(){
		var event = '';
			event = execute("MultiTenant.admin.index");
			debug(event.getCollection());
		
	}
		
}