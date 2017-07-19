# TODO

* Copy all footprints to project library
* Footprint of MOSFET is wrong
* Increase hole diameter for WAGO connector
* Fix position of silkscreen on bottom layer

# FTDI configuration.

From the [FTDI USB-RS485 cable documentation]( http://www.ftdichip.com/Support/Documents/DataSheets/Cables/DS_USB_RS485_PCB.pdf):

> RS485 systems often have local echo enabled. This means any data
> transmitted by a device is echoed back to itself.  The USB-RS485-PCB
> allows for local echo to be enabled/disabled by changing a bit in the
> FT232R EEPROM. If CBUS4 in the EEPROM is set for “PWRON#”, local echo is
> enabled. If CBUS4 in the EEPROM is set for “TXDEN”, local echo is
> disabled.  Users can enable/disable the local echo setting with the Echo
> Configuration Utility from
> http://www.ftdichip.com/Support/Utilities/USB-485%20Echo%20Configuration%20Utility.zip
> If required, other EEPROM settings (including local echo) can also be
> configured with the FT_Prog utility from
> http://www.ftdichip.com/Support/Utilities.htm The default for the local
> echo is disabled (CBUS4 set for “TXDEN”)."

-> the nRE line is connected to CBUS4. At the moment, read operations
fail because the nRE line is not toggled. Use the FT_Prog utility to set
CBUS4 to TXDEN. By default, CBUS4 is set to the "SLEEP" function.

Initially, an USB device may only draw 90mA.

You can use [Mark Lord's ft232r_prog](http://rtr.ca/ft232r/) to change
the EEPROM settings. In order to see the current EEPROM content, use

    $ ft232r_prog --verbose --dump --old-vid 0x0403 --old-pid 0x6001

In order to set CBUS3 to PwrEN, CBUS4 to TxDEN, high-current-io on and
the maximum power consumption to 300 mA, use

    $ ft232r_prog --verbose --dump --old-vid 0x0403 --old-pid 0x6001 \
		--cbus3 PwrEn --cbus4 TxDEN --high-current-io off --max-bus-power 300


## Platform-specific notes

### Linux

I could successfully compile the binary just by typing
``make``.

### Mac OS X

I needed to add ``/usr/local`` to the Makefile. The
top two lines now read like this:

    CFLAGS = -Wall -O2 -s -Werror -I/usr/local/include
    LDFLAGS = -L/usr/local/lib -lusb -lftdi -s

In my case, a FTDI driver claimed the device, preventing the
``ft232r_prog`` command to communicate with the FTDI. You can list the
FTDI-related kernel extensions using

    $ kextstat | grep FTDI
		156    0 0xffffff7f83606000 0x8000     0x8000     com.FTDI.driver.FTDIUSBSerialDriver (2.2.16) 0AB01558-B114-9EF2-1CD9-A13CFA557737 <137 55 5 4 3 1>

Then, to unload the driver, use

    $ sudo kextunload -b com.FTDI.driver.FTDIUSBSerialDriver

for all FTDI drivers you found.
