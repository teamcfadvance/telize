telize
======

telize.com api cfml wrapper

http://www.telize.com/



Methods:
===========

* getIP() -- Gets the current ip of the client calling the script.  Optional pass in 'json' as an argument to have the ip returned in json format

* getGEOIP() -- Gets the geo information for the passed in IP.  If no IP is passed in it defaults to the ipaddress of the client calling the script.  Returns JSON.
