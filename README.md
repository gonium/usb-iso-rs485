# TODO

* U2: Mark orientation of FTDI (Pin1 -> bottom right)
* Connector P1: 
	* Provide A-B-GND orientation on silkmask
* U1: Stronger connection of GND pins to groundplane for better heat
  dissipation
* Copy all footprints to project library
* Placement of C2 and C4 is twisted in the layout. Change values
	accordingly.
* Increase width of pcb tracks
* place terminator jumper at the side (angled pinheader) - make it easy
	to grab
* README/Software: Set CBUS3 to PWREN function

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

You can use [Mark Lord's ft232r_prog](http://rtr.ca/ft232r/) to change
the EEPROM settings. In order to see the current EEPROM content, use

    $ ft232r_prog --verbose --dump --old-vid 0x0403 --old-pid 0x6001

In order to set CBUS4, use

    $ ft232r_prog --verbose --dump --old-vid 0x0403 --old-pid 0x6001 --cbus4 TxDEN

The adaptor generates the supply voltage for the RS485 line. The maximum
power draw is 300mA. By default, the FTDI reports only 90mA to the USB
bus. To change this, use

    $ ft232r_prog --verbose --max-bus-power 300 --old-vid 0x0403 --old-pid 0x6001
