
# Download Firmware
```
./glinswup -p /dev/ttyACM0 -f ./pls62.usf -j ./JRC-1.62.04.jad
```
# Access cell device 
```
./clup.sh
./cellon.sh
microcom /dev/ttyACM2
```
# AT Commands
```
at^scfg="Radio/Band/4G" # Check band 12 (Enabled:0x080E00DF, Disabled:)
ATI1                    # Check revision A-REVISION
at+cgdcont?             # Check APN
AT+COPS?                # Name of Service Provider
ATD 8587221464;         # Dial 10 digit number
ATH                     # Hangup
ATD                     # Redial
ATA                     # Answer a call
AT+CMEE=2               # More Verbose Error Reporting
AT+CPIN?                # SIM Status (Ready, not inserted, PIN Locked)
AT+CFUN=1,1             # Restart Modem
AT+QCFG="band"?         # What is the modem band configuration
AT+CREG?                # What is the network registration status
AT+CSQ                  # Check signal quality (99-0) 0 is best
-----------------------------------------------------------------------
echo -ne "ati\r" | microcom -t 2000 /dev/ttyACM2 # Kinda same as ATI1
-----------------------------------------------------------------------
```