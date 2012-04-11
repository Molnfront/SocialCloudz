/**
* @model contentbox-modules.multiTenant.model.site
*/
component extends="coldbox.system.testing.BaseModelTest"{

  function setup(){
     super.setup();
     site = model;
     
     debug(site);
  }

  function testGetSiteID(){
    siteID = site.getSiteID();
    assertTrue( isNumeric(siteID) );
  }
	function testGetDNSMask(){
    mask = site.getDnsMask();
    assertTrue( isStruct(mask) );
  }
}