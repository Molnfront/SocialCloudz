/**
* I am a sites members
*/
component persistent="true" entityname="scAuthor" table="sc_authorSite"{

	// Properties
	property name="accountID" fieldtype="id" generator="native" setter="false";
	property name="fk_memberID" 		notnull="true"  length="200";
	property name="fk_siteID"		notnull="true"  length="200";

}