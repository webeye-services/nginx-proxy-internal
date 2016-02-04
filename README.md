# nginx-proxy-internal

modified jwilder/nginx-proxy to avoid conflict with  VIRTUAL_HOST what is used by another awesome  
project steveltn/https-portal

## Difference from jwilder/nginx-proxy

both of these images (jwilder/nginx-proxy and steveltn/https-portal) use environmental variable VIRTUAL_HOST and 
I need it to run on one docker host. Easiest way is  divide this variable. So the nginx proxy use 
VIRTUAL_HOST_INTERNAL and is modified nginx.tmpl (nothing else) 

this allow me to run both image without overloading let's encrypt site with request for internal certificates what is 
not possible to get from let's encrypt project (I'm very sad about it) 


