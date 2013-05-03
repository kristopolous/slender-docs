# Connecting the API to the CMS

## Preparation

This tutorial presumes that you have the [API](api.html) and the [CMS](cms.html) set up in their own respective virtual machines. If you don't, you should do that before proceeding.

Since the API and the CMS run on separate virtual machines you must configure them to talk to each other.

## Configuration

To connect the cms to the API you need to tell the CMS where the API is.  This can be done by editing `app/config/packages/dws/slender-cms/api.php`.

Make sure that the `host` and `auth` values match up to the value that was created in the API set up.

## Troubleshooting

<span>
**Message**: Failed to connect to: 127.0.0.1:27017: Transport endpoint is not connected

**Diagnosis:** The forwarded port in the api isn't right. Look in the VagrantFile of the API and make sure that the `config.vm.forward_port 28017,XXXX` port matches the one.
</span>
