/**
* @model contentbox-modules.multiTenant.model.authorSite
*/
component extends="coldbox.system.testing.BaseModelTest"{

  function setup(){
     super.setup();
     account = model;
     
     debug(account);
  }

 function testGetID(){
 	accountID = account.getAccountId();
 	assertTrue(isDefined('accountID'));
 }

}