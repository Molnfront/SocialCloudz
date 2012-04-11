/**
* @interceptor contentbox-modules.multiTenant.interceptors.siteManager
*/
component extends="coldbox.system.testing.BaseInterceptorTest"{

	function setup(){
		super.setup();
		
		mockSiteService = getMockBox().createMock("contentbox-modules.multiTenant.model.siteService");
		interceptor.$property("siteService","variables",mockSiteService);
	}
	
	function test_preProcess(){
		var req = getMockRequestContext();
		interceptor.preProcess(req, {});
		prc = req.getCollection(private=true);
		debug(prc);
		assertTrue( isStruct(prc.site) );
	}
}