<cfcomponent hint="telize.com api cfml wrapper">

	<cffunction name="init" access="public" output="false" hint="I initialize the component.">
		<cfreturn this>
	</cffunction>

	<cffunction name="getIP" hint="This function gets the current ipaddress of client" output="no">
    	<cfargument name="json" default="" required="no" hint="Pass in json if you want JSON returned">
    
    	<cfset var API = structNew()>
        
        <cfhttp url="http://www.telize.com/#arguments.json#ip" result="API"></cfhttp>
    
    	<cfif arguments.json is "json">
        	<cfreturn deserializeJSON(API.filecontent)>
        <cfelse>
        	<cfreturn API.filecontent>
        </cfif>
    	
    
    </cffunction>
    
    <cffunction name="getGeoIP" hint="This function gets the geo information of the passed in ipaddress.  Defaults to ipaddress of client">
    	<cfargument name="IP" default="#cgi.REMOTE_ADDR#" hint="Ipaddress to get the information on.">
        
        <cfset var API = structNew()>
        
        <cfhttp url="http://www.telize.com/geoip/#arguments.ip#" result="API"></cfhttp>
    
    	<cfreturn deserializeJSON(API.filecontent)>
    </cffunction>
    
    
</cfcomponent>