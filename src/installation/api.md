# Set up slender-api

This tutorial will guide you through the following steps:

1. Cloning the `slender-api`.
1. Starting a vagrant instance for the slender-api.
1. Configuring various [dependencies](../dependencies.html).
1. Determining your environment.
1. Running the unit tests.
1. Writing your own unit tests.
1. Extending the API

Refer to the [connect](connect.html) section for details on how to get the CMS and the API to talk to each other.

-----

Step 1. Clone slender-api 
<pre class="">
host:~$ git clone git://github.com/dwsla/slender-api.git
...
host:~$
</pre> 

Step 2. Start up vagrant for slender-api
(~20 minutes)
<pre>
host:~$ cd slender-api
host:slender-api/$ vagrant up
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

Step 2a. Install and run composer
(~10 minutes)
<pre>
vagrant@slender-api:/vagrant$ curl -sS https://getcomposer.org/installer | php
...
vagrant@slender-api:/vagrant$ php composer.phar install 
...
vagrant@slender-api:/vagrant$ php artisan add-admin-user --env=local
(enter in information here)
...
*---------------------------------------------------------------------------*

User has been successfully created!
Your Auth Key is: <record this>

*---------------------------------------------------------------------------*
vagrant@slender-api:/vagrant$ logout
...
host:slender-api/$ chmod o+w ./app/storage/meta
</pre>
<aside class="tip">
### Make the auth-key human-readable.

TODO

<pre>
vagrant@slender-api:/vagrant$ mongo
> show dbs
> db.users.update({"key":<key>}, {$set:{"key":"slender"}})
> ^D
bye
vagrant@slender-api:/vagrant$ 
</pre>

</aside>

<aside class="troubleshoot">
### Some things you may see:

<pre>
[default] The guest additions on this VM do not match the install version of
VirtualBox! This may cause things such as forwarded ports, shared
folders, and more to not work properly. If any of those things fail on
this machine, please update the guest additions and repackage the
box.

Guest Additions Version: 4.1.22
VirtualBox Version: 4.1.12
</pre>
</aside>

<pre>
host:slender-api/$ cat Vagrantfile
...
  config.vm.forward_port 80, 4003
...
host:slender-api/$ 
</pre>
We can observe above, that port 80 on the vagrant box has been portforwarded for us to 4003.

<pre>
host:slender-api/$ curl http://localhost:4003/
OK%                                             
host:slender-api/$ 
</pre>

### Determining your environment.

Slender supports different environments.  These are outlined in `bootstrap/start.php` and inferred from the `$_SERVER` host variables.

There are separate configuration files for each `$env`. For local, for instance, there is a file at `app/config/local/databases.php`.

Inside this file you will see an array of depth 2.  The second depth of the array corresponds to the API http path.

For instance, if there were the following values:

  'somesite' => array(
    'host' => '127.0.0.1',
    'port' => 27017,
    'database' => 'slender_somesite'
  )

Then you can make calls to that api via `http://hostname:port/somesite/slug`.


Step 3. Run the unit tests
To test slender-api, we need to make sure that phpunit is installed correctly. 

Go into the virtual box and make sure it is installed:

<pre>
host$ vagrant ssh
Last login: Sun Apr  7 03:02:22 2013 from 10.0.2.2
vagrant@slender-api:~$ cd /vagrant
vagrant@slender-api:/vagrant$ php composer.phar update --dev
...
vagrant@slender-api:/vagrant$ ./phpunit
...
vagrant@slender-api:/vagrant$ 
</pre>




<pre>
host:slender-api/$ chmod o+w app/storage/meta
</pre>

