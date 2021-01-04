## using screen
`screen` starts screen process
`screen -r` looks for active attached or detacted screen processes
```sh
There are several suitable screens on:
    6962.ttys000.computername    (Detached)
    6966.ttys000.computername    (Detached)
Type "screen [-d] -r [pid.]tty.host" to resume one of them.
```
`screen -r 6966` resumes screen under 6966

`ctrl + a` + `n` moves forward a screen
`ctrl + a` + `p` moves back a screen

run a process while under screen to run it under a screen
```