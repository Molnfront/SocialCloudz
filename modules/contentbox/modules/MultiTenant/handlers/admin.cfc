/**
* Manage sites
*/
component extends="contentbox-admin.handlers.baseHandler"{

	property name="siteService"		inject="id:siteService@sc";
	
	function preHandler(event,action,eventArguments){
		var rc 	= event.getCollection();
		var prc = event.getCollection(private=true);
	}

	function index(event,rc,prc){
		prc.tabModules_MultiTenant = true;
		prc.sites = siteService.getAll();
		event.setView("admin/index");
	}
}