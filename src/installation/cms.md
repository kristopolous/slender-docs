## Set up slender-cms

This tutorial will guide you through the following steps:

1. Cloning of the `slender-cms`.
1. Starting a vagrant instance for the slender-cms.
1. Configuring various [dependencies](../dependencies.html).

Refer to the [connect](connect.html) section for details on how to get the CMS and the API to talk to each other.

-----

Step 1. Clone slender-cms
<pre>
host:~$ git clone git://github.com/dwsla/slender-cms.git
</pre>

Step 2. Start up vagrant for slender-cms
(~20 minutes)
<pre>
host:~$ cd slender-cms
host:slender-cms/$ vagrant up
[default] Importing base box 'centos-6.3-i386'...
[default] Matching MAC address for NAT networking...
[default] Clearing any previously set forwarded ports...
[default] Forwarding ports...
[default] -- 22 => 2222 (adapter 1)
[default] -- 80 => 4003 (adapter 1)
[default] -- 27017 => 27019 (adapter 1)
...
[2013-04-05T02:27:46+00:00] INFO: Chef Run complete in 90.334180485 seconds
[2013-04-05T02:27:46+00:00] INFO: Running report handlers
[2013-04-05T02:27:46+00:00] INFO: Report handlers complete
host:slender-api/$ 
</pre>
