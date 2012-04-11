/**
********************************************************************************
Multi-Tenant Site Manager for ContentBox 
Copyright 2012 by Bill Berzinskas
********************************************************************************
Apache License, Version 2.0

Copyright Since [2012] [Luis Majano and Ortus Solutions,Corp]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
********************************************************************************
*/
component hint="My Module Configuration"{
	// Module Properties
	this.title 				= "Multi-Tenant Site Manager";
	this.author 			= "Bill Berzinskas";
	this.webURL 			= "http://www.socialcloudz.com";
	this.description 		= "allow contentbox to service multiple domains - hierarchichaly linked";
	this.version			= "1.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= false;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup =false;
	// Module Entry Point
	this.entryPoint			= "MultiTenant";

	function configure(){

		// parent settings
		parentSettings = {

		};

		// module settings - stored in modules.name.settings
		settings = {

		};

		// Layout Settings
		layoutSettings = {
			defaultLayout = ""
		};

		// datasources
		datasources = {

		};

		// web services
		webservices = {

		};

		// SES Routes
		routes = [
			// Module Entry Point
			{pattern="/", handler="admin",action="index"},
			// Convention Route
			{pattern="/:handler/:action?"}
		];

		// Custom Declared Points
		interceptorSettings = {
			customInterceptionPoints = "cbui_beforeHeadEnd"
		};

		// Custom Declared Interceptors
		interceptors = [
			{class="#moduleMapping#.interceptors.siteManager", name="siteManager@sc"}	
		];

		// Binder Mappings
		 binder.map("siteService@sc").to("#moduleMapping#.model.siteService");

	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
		// Let's add ourselves to the main menu in the Modules section
		var menuService = controller.getWireBox().getInstance("AdminMenuService@cb");
		// Add Menu Contribution
		menuService.addSubMenu(topMenu=menuService.MODULES,name="MultiTenant",label="Site Manager",href="#menuService.buildModuleLink('MultiTenant','admin')#");
	}

	/**
	* Fired when the module is activated by ContentBox
	*/
	function onActivate(){

	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){
		// Let's remove ourselves to the main menu in the Modules section
		var menuService = controller.getWireBox().getInstance("AdminMenuService@cb");
		// Remove Menu Contribution
		menuService.removeSubMenu(topMenu=menuService.MODULES,name="MultiTenant");
	}

	/**
	* Fired when the module is deactivated by ContentBox
	*/
	function onDeactivate(){

	}

}