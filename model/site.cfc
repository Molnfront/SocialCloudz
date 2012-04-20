/**
* I am a site entry
*/
component persistent="true" entityname="scSite" table="sc_site"{

	// Properties
	property name="siteID" fieldtype="id" generator="native" setter="false";
	
	property name="fk_authorID" 		notnull="true"  length="200";
	property name="name"		notnull="true"  length="200";
	property name="category"		notnull="true"  length="200";
	property name="dateCreated"		notnull="true"  length="200";
	property name="dateUpdated"		notnull="true"  length="200";
	property name="active"		notnull="true"  length="200";
	property name="private"		notnull="true"  length="200";
	property name="featured"		notnull="true"  length="200";
	property name="directory"		notnull="true"  length="200";
	property name="bandwidth"		notnull="true"  length="200";
	property name="storage"		notnull="true"  length="200";
	property name="bandwidth"		notnull="true"  length="200";
	property name="parentID"		notnull="true"  length="200";
	property name="logo"		notnull="true"  length="200";
	
	// M20 -> members
	//property name="members" notnull="true" fieldtype="many-to-one" cfc="authorSite" fkcolumn="FK_siteID" lazy="true";
	
	// M20 -> DNSMask
	property name="dnsMask" notnull="true" fieldtype="one-to-many" cfc="DNSMask" fkcolumn="siteID" lazy="true";
	
}
	



