
<!---CREATE THE OBJECT--->
<cfset telize = createObject("component","telize")>

<!---RETURN THE IPADDRESS OF CLIENT--->
<cfdump var="#telize.getIP()#">

<!---RETURN THE IPADDRESS OF CLIENT IN JSON FORMAT--->
<cfdump var="#telize.getIP('json')#">

<!---RETURN THE GEO INFORMATION FOR IPADDRESS--->
<cfdump var="#telize.getGEOIP('74.125.228.101')#">

<!---DEMONSTRATES AN ERROR IF IPADDRESS IS BAD --->
<cfdump var="#telize.getGEOIP('127.0.0.1')#">