# Installation
## Introduction

Slender is broken up into two parts:

 * slender-api: A "back-end" api
 * slender-cms: A "front-end" cms

Getting up and running hassle-free.

## Target Audience

You should be comfortable with the following before continuing:

 * Editing PHP files
 * Basic git usage
 * Using the UNIX command line

## What you need

The following guide will use 

 * [git](http://git-scm.com/) - The popular RCS tool. (The repos used also support [SVN](https://github.com/blog/626-announcing-svn-support));
 * [vagrant](http://www.vagrantup.com) - a tool that works with virtual-box to virtualize development environments, keeping your host install clean. (highly recommended).
 * [curl](http://curl.haxx.se/) - a command line tool that interfaces with http. [wget](http://www.gnu.org/software/wget/) can also be used.
 * [elinks](http://elinks.or.cz/) - a text based web-browser; any web-browser will do.

We also recommend:

 * a linux system. This tutorial is being written on an Ubuntu 12.04.02 LTS system.  
 * multiple Gigabytes of RAM on the host system 
 * at least an Intel i5 or equivalent processor to make things run smoothly.
 * a high-speed internet connection (around 1GB is downloaded for the base system including the VM).

The virtual machines used are 32-bit. So a 32-bit version of a linux distribution should be fine.

<aside>
Success with other platforms? We'd like to know. Drop us a line!
</aside>

<blockquote>
Note: Vagrant can't be run on VPS hosts (slicehost, linnode, prgmr).
</blockquote>

## Installing
Since installation can have lots of snags for some and may be painless for others, there is verbose trouble-shooting available at every step.  Click on the icon next to the step if it's giving you issues.

<blockquote>
There are two prompts used:

* "host$" refer to commands that are to be run outside of the virtual-machine, on your regular shell.
* "vagrant@slender-api:" refer to commands that should be run INSIDE of the virtual-machine. 

To get inside the virtual machine, do the following:

<pre>
host$ cd slender-api
host$ vagrant up
...
host$ vagrant ssh
Last login: Sun Apr  7 03:02:22 2013 from 10.0.2.2
vagrant@slender-api:~$ 
</pre>
</blockquote>

## Set up slender-api
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
[default] Creating shared folders metadata...
[default] Clearing any previously set network interfaces...
[default] Booting VM...
[default] Waiting for VM to boot. This can take a few minutes.
...
[2013-04-05T02:27:46+00:00] INFO: Chef Run complete in 90.334180485 seconds
[2013-04-05T02:27:46+00:00] INFO: Running report handlers
[2013-04-05T02:27:46+00:00] INFO: Report handlers complete
host:slender-api/$ 
</pre>

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

Step 3. Test slender-api
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

<pre>
host:slender-api/$ chmod o+w app/storage/meta
</pre>

## Set up slender-cms
Step 1. Clone slender-cms
<pre>
host:~$ git clone git://github.com/dwsla/slender-cms.git
</pre>
