/**
* @model contentbox-modules.multiTenant.model.DNSMask
*/
component extends="coldbox.system.testing.BaseModelTest"{

  function setup(){
     super.setup();
     site = model;
     
     debug(site);
  }

  function testGetSiteID(){
    assertTrue( true );
  }

}