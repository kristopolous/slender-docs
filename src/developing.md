## Developing in Slender

### xdebug

Adding this magic sauce to `/etc/php.d/xdebug.ini` on the VM will help.  Remember, with xdebug, the client is the PHP application and the server is your IDE.

```
xdebug.remote_enable=1
xdebug.remote_handler=dbgp
xdebug.remote_mode=req
xdebug.remote_host=10.0.2.2
xdebug.remote_port=9000
```

netbeans

