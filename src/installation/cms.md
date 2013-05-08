# Set up slender-cms

This tutorial will guide you through the following steps:

1. Cloning of the `slender-cms`.
1. Starting a vagrant instance for the slender-cms.
1. Configuring various [dependencies](../dependencies.html).

Refer to the [connect](connect.html) section for details on how to get the CMS and the API to talk to each other.

-----

Step 1. Clone slender-cms
```bash
host:~$ git clone git://github.com/dwsla/slender-cms.git
```

Step 2. Start up vagrant for slender-cms
(~20 minutes)

```bash
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
host:slender-cms/$ 
```

Install composer (see the [dependencies](../../dependencies.html) for more information).

```bash
vagrant@slender-cms:/vagrant$ curl -sS https://getcomposer.org/installer | php
...
vagrant@slender-cms:/vagrant$ php composer.phar install
...
vagrant@slender-cms:/vagrant$ 
```

<aside>
You may need to increase composer's patience by running a command such as

```bash
vagrant@slender-cms:/vagrant$ 
php composer.phar config process-timeout 3000
```

</aside>

Install Laravel packages


## Troubleshooting

<div class="trouble"><span>
**Message**: 

`
Warning: SessionHandler::read(): open(/vagrant/app/config/../storage/sessions/sess_..., O_RDWR) failed: Permission denied (13) in /vagrant/vendor/symfony/http-foundation/Symfony/Component/HttpFoundation/Session/Storage/Proxy/SessionHandlerProxy.php line 69 
`


**Diagnosis**: There are some permission errors that can be resolved by moving the session storage off the vagrant mounted disk.

Edit `/vagrant/app/config/session.php` and change the `files` key to have a value such as `/tmp/`.
</span>

<span>

**Message**: 

`
file_put_contents(/vagrant/app/config/../storage/meta/services.json) [<a href='function.file-put-contents'>function.file-put-contents</a>]: failed to open stream: Permission denied 
`

**Diagnosis**: This is similar to the previous problem. Edit `/vagrant/app/config/app.php` and change the `manifest` key to have a value such as `/tmp/` that is off the vagrant mount of the host system.
</span>

</div>
