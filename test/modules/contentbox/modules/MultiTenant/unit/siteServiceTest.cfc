/**
* @model contentbox-modules.multiTenant.model.siteService
*/
component extends="coldbox.system.testing.BaseModelTest" appMapping="/root"{

  function setup(){
     super.setup();
     siteService = model.init(eventhandling=false);
  }

  function testInit(){
    assertTrue( isStruct(siteService) );
  }
 
 function testGetAll(){
    site = siteService.getAll();
    debug(site);
    assertTrue( isArray(site) );
  }
  
   function testGetByHost(){
    site = siteService.getByHost('www.socialcloudz.com');
    assertTrue( isQuery(site) );
  }

  function testList(){
    site = siteService.list();
    debug(site);
    assertTrue( isQuery(site) );
  } 
  
 function testCount(){
    site = siteService.count();
    debug(site);
    assertTrue( isNumeric(site) );
  } 
}