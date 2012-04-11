<cfcomponent name="siteManager Interceptor"
	hint="This interceptor will handle config to the app."
	output="false"
	extends="coldbox.system.interceptor" >
	
	<Cfproperty name="siteService" inject="id:siteService@sc">

	<cffunction name="preProcess" output="false" access="public" returntype="void" hint="ENVIRONMENT control the settings">
		<cfargument name="event" required="true"  hint="The event object.">
		<cfargument name="interceptData" required="true" type="struct" hint="interceptData of intercepted info.">
		
		<cfset var rc = event.getCollection()>
		<Cfset var prc = event.getCollection( private = true )>
 
		     <cfscript>
			 
			   	prc.site = siteService.getByHost(cgi.http_host);
			 // event.setSESBaseURL('http://' & cgi.http_host & '/' & getSetting('appMapping') & '/index.cfm/')
			  
		  </cfscript>

	</cffunction>
</cfcomponent>
