     1	#!/usr/bin/env bash
     2	# configures an Nginx server so that /redirect_me redirects to another page.
     3	# The redirection is configured as a "301 Moved Permanently"
     4	# Includes a custom 404 page containing "Ceci n'est pas une page".
     5	
     6	#  updates the package lists for available software packages.
     7	apt-get update
     8	# installs the Nginx web server.
     9	apt-get install -y nginx
    10	
    11	# Creates the /etc/nginx/html directory, which will serve as the document root directory for Nginx.
    12	mkdir /etc/nginx/html
    13	#  creates an empty index.html file inside the /etc/nginx/html directory.
    14	touch /etc/nginx/html/index.html
    15	#  sets the content of the index.html file to "Hello World!" using the echo command.
    16	echo "Hello World!" > /etc/nginx/html/index.html
    17	# Sets Nginx to listen on port 80 and serve files from the /etc/nginx/html directory.
    18	printf %s "server {
    19	     listen      80 default_server;
    20	     listen      [::]:80 default_server;
    21	     root        /etc/nginx/html;
    22	     index       index.html index.htm;
    23	}
    24	" > /etc/nginx/sites-available/default
    25	
    26	#  creates an empty file named 404.html inside the /etc/nginx/html directory.
    27	touch /etc/nginx/html/404.html
    28	
    29	# Paste a 404 response in the 404.html file
    30	echo "Ceci n'est pas une page" | sudo tee /etc/nginx/html/404.html
    31	
    32	# Display script completion message
    33	echo "Nginx installation and configuration completed."
    34	
    35	# Create a configuration file for the redirection
    36	echo "server {
    37	    listen      80;
    38	    listen      [::]:80;
    39	    root        /etc/nginx/html;
    40	    index       index.html index.htm;
    41	
    42	    # Add index.php to the list if you are using PHP
    43	    index index.html index.htm index.nginx-debian.html;
    44	
    45	    location /redirect_me {
    46	        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    47	    }
    48	
    49	    error_page 404 /404.html;
    50	    location /404 {
    51	      root /etc/nginx/html;
    52	      internal;
    53	    }
    54	
    55	}" | sudo tee /etc/nginx/sites-available/default
    56	
    57	# Enable the new site configuration
    58	sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/
    59	
    60	# Test nginx configuration and reload
    61	sudo nginx -t
    62	sudo service nginx reload
    63	
    64	
    65	7-puppet_install_nginx_web_server.pp
    66	
    67	#!/usr/bin/env bash
    68	# Configure server using puppet
    69	
    70	# defines a Puppet class called nginx_server that 
    71	#  encapsulates the configuration for the Nginx server.
    72	class nginx_server {
    73	  package { 'nginx':
    74	    ensure => installed,
    75	  }
    76	
    77	#  manages the Nginx service.
    78	  service { 'nginx':
    79	    ensure => running,
    80	    enable => true,
    81	    require => Package['nginx'],
    82	  }
    83	# manages the Nginx configuration file located at /etc/nginx/sites-available/default.
    84	  file { '/etc/nginx/sites-available/default':
    85	    ensure  => present,
    86	    content => "
    87	      server {
    88	        listen      80 default_server;
    89	        listen      [::]:80 default_server;
    90	        root        /var/www/html;
    91	        index       index.html index.htm;
    92	
    93	        location / {
    94	          return 200 'Hello World!';
    95	        }
    96	
    97	        location /redirect_me {
    98	          return 301 http://cuberule.com/;
    99	        }
   100	      }
   101	    ",
   102	    notify => Service['nginx'],
   103	  }
   104	}
   105	#  includes the nginx_server class, ensuring that it gets applied.
   106	include nginx_server
