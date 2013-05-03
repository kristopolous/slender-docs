# Installation

Slender is broken up into two parts:

 * slender-api: A "back-end" api
 * slender-cms: A "front-end" cms

## Target Audience

You should be comfortable with the following before continuing:

 * Editing PHP files
 * Basic git usage
 * Using the UNIX command line

## What you need

The following guides will use 

 * [git](http://git-scm.com/) - The popular RCS tool. (The repos used also support [SVN](https://github.com/blog/626-announcing-svn-support));
 * [vagrant](http://www.vagrantup.com) - a tool that works with virtual-box to virtualize development environments, keeping your host install clean. (highly recommended).
 * [curl](http://curl.haxx.se/) - a command line tool that interfaces with http. [wget](http://www.gnu.org/software/wget/) can also be used.
 * [elinks](http://elinks.or.cz/) - a text based web-browser; any web-browser will do.

We also recommend:

 * a Linux system. This tutorial is being written on an Ubuntu 12.04.02 LTS system.  
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

* "host:$" refer to commands that are to be run outside of the virtual-machine, on your regular shell.
* "vagrant@slender-api:" refer to commands that should be run INSIDE of the virtual-machine. 

To get inside the virtual machine, do the following:

<pre>
host:~$ cd slender-api
host:slender-api/$ vagrant up
...
host:slender-api/$ vagrant ssh
Last login: Sun Apr  7 03:02:22 2013 from 10.0.2.2
vagrant@slender-api:~$ 
</pre>
</blockquote>

There are three separate documents:

  * [Setting up the API](api.html)
  * [Setting up the CMS](cms.html)
  * [Getting the API and the CMS talking to each other](connect.html)

The first two can be read in any order, but the third should probably come last.

