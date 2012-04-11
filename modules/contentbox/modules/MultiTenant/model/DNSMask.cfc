/**
* I am a sites dnsmask
*/
component persistent="true" entityname="scDNSMask" table="sc_dnsmask"{

	// Properties
	property name="maskID" fieldtype="id" generator="native" setter="false";
	property name="fk_siteID" 		notnull="true"  length="200";
	property name="subdomain"		notnull="true"  length="200";
	property name="domain"			notnull="true"  length="200";
	property name="startPage"		notnull="true"  length="200";
	property name="verified"		notnull="true"  length="200";
}