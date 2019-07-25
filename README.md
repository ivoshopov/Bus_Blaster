# Bus_Blaster

## Setup Bus Blaster v3

Bus Blaster has configurable hardware (CPLD) that is used to glue FT2322 to the target, since different target has different pin outs and voltage levels.
Brand new Bus Blaster do not have any configuration in its CPLD.
In order to run Bus Blaster we should configure its CPLD first. There is an open source tool called urjtag that can .
Build and install urjtag with:

        git clone git://git.code.sf.net/p/urjtag/git
        cd urjtag
        ./configure
        make
        make install

Start the urjtag:

        jtag

The CPLD logic can be taken by:

        wget https://github.com/ivoshopov/Bus_Blaster/blob/master/buffer_logic/bbv3/bbv3-jtagkey.svf

Configure the CPLD in the BusBalster by:

        jtag> cable ft2232 pid=0x6010 vid=0x0403 interface=1
        jtag> detect
        jtag> svf bbv3-jtagkey.svf stop progress

For verification of the JTAG chain we can do:

        jtag> cable JTAGkey pid=0x6010 vid=0x0403 interface=0
        jtag> detect

If the ARM CPU is connected correctly urjtag have to detect ARM JTAG DAP.
The output should looks like:

        IR length: 4
        Chain length: 1
        Device Id: 01011011101000000000010001110111 (0x5BA00477)
          Unknown manufacturer! (01000111011) (/usr/local/share/urjtag/MANUFACTURERS)
