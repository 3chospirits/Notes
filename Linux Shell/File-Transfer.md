#Using `scp` to transfer between remote server

`[OPTION] [user@]SRC_HOST:]file1 [user@]DEST_HOST:]file2`


`OPTION` - scp options such as cipher, ssh configuration, ssh port, limit, recursive copy …etc.

`[user@]SRC_HOST:]file1` - Source file.

`[user@]DEST_HOST:]file2` - Destination file


### Options

- `-P` - Specifies the remote host ssh port.
- `-p` - Preserves files modification and access times.
- `-q` - Use this option if you want to suppress the progress meter and non-error messages.
- `-C` - This option forces scp to compresses the data as it is sent to the destination machine.
- `-r` - This option tells scp to copy directories recursively.

### Example usage

#### Copying over a file to a remote directory
`scp file.txt remote_username@10.10.0.2:/remote/directory`

The path will default to user home directory if no directory is specified on the remote server.

#### Specifying the name of the file after being copied over
`scp file.txt remote_username@10.10.0.2:/remote/directory/newfilename.txt`

#### Copying a directory from a remote server

Use the `-r` option for recursive copy

`scp -r /local/directory remote_username@10.10.0.2:/remote/directory`

#### Copying a file from remote to local directory

`scp remote_username@10.10.0.2:/remote/file.txt /local/directory`
