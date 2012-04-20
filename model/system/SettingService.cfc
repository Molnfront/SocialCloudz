
component extends="contentbox.model.system.SettingService" accessors="true" singleton{

	// DI properties
	property name="cache" inject="cachebox:default";

	// Properties
	property name="settingsCacheKey" type="string";

	/**
	* Constructor
	*/
	SettingService function init(){
		// init it
		super.init(entityName="scSetting");
		// settings cache key
		setSettingsCacheKey("sc-settings");
		return this;
	}

	function list(sort) {  
		writeDump('foo');abort;
		return super.list( criteria={siteID=prc.siteID}, sortOrder=arguments.sort);
	}
}