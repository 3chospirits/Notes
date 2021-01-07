## Install Node.js from NodeSource Repository

Alternatively, you may want to install Node.js and NPM from the NodeSource repository by adding its PPA (Personal Package Archive) for Ubuntu.
To enable the NodeSource repository, you have to use a curl command.
1. If you do not have curl on your system, run the following command to install it:
sudo apt install curl
Press y to confirm the installation and hit Enter.
2. Now use the following sudo bash script to enable NodeSource:
`curl -sL https://deb.nodesource.com/setup_11.x | sudo bash -`
3. Next, install both Node.js and NPM with one command:
`sudo apt install nodejs`
4. Verify the installation by checking the versions of Node.js and NPM.
Run the commands:
`nodejs --version`
`npm –version`
 
## To upgrade version of node
`npm install -g npm@4`

`12.18.0`

`curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -`


## font installation
 `sudo apt install ttf-mscorefonts-installer `

