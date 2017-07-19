# Compilation & upload

    $ pip install platformio
    $ platformio run --target upload


## Notes for development under Ubuntu Linux

The ModemManager interferes with the upload process. You kann disable it
by writing "manual" in the override file:

    $ echo "manual" > /etc/init/modemmanager.override

See [Disable Modemmanager](http://bookofzeus.com/harden-ubuntu/disable-services/disable-modemmanager/)

