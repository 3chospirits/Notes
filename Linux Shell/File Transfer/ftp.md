## Using the FTP command 

# Connecting to the remote machine

On local machine type
`ftp machinename`
aka domain/ip addr

afterwards will prompt for username and password

# set transfer type to binary
`ftp> binary`

# copying over a single file
`ftp> get filename`

# copying over multiple files
`ftp> mget [...filename]`

# close the ftp connection
`ftp> bye`

## Misc

# Monitoring progresss of FTP
show transferred bytes with

```
ftp> bin
200 Type set to I.
ftp> tick
Tick counter printing on (10240 bytes/tick increment).
ftp> get setup.exe
local: setup.exe remote: setup.exe
227 Entering Passive Mode (172,16,99,5,151,87)
150 Opening BINARY mode data connection for setup.exe (32860506 Bytes).
Bytes transferred: 9074088
```