## Generate SSH key

create an SSH key in the .ssh folder

```sh
$ cd ~/.ssh
$ ssh-keygen -t rsa -C "your_email@youremail.com"
```

## Add SSH key to the ssh client
```sh
$ ssh-add ~/.ssh/privatekeyfile
```

### Start the SSH agent
if the ssh-add command gives the error of 
`Could not open a connection to your authentication agent.`
use
```sh
$ eval `ssh-agent -s`
```

## View the saved keys in the SSH agent
```sh
$ ssh-add -l
```

## Modify the SSH config
```sh
$ cd ~/.ssh/
$ touch config # if config does not exist already
$ vim config # edit config file
```
## Add to config file
```
#account1
Host github.com-acc1
	HostName github.com
	User git
	IdentityFile ~/.ssh/acc1privatesshkey
#account2
Host github.com-acc2
    HostName github.com
    User git
    IdentityFile ~/.ssh/acc2privatesshkey
```
## Clone or update existing repository git settings
### Cloning a new repository (using acc1)
```sh
$ git clone git@github.com-acc1:username/repo1.git
```

### Updating an existing repository (using acc2)
```sh
$ git remote -v # view the current git origin
$ git remote set-url origin git@github.com-acc2:username/repo1.git
$ git remote -v # verify the git origin has been updated
```
