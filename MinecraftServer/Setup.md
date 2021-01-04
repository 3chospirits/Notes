## downloading files
`sudo apt install openjdk-8-jdk -y` install java 8

`sudo apt install screen` install screen

`curl -O <download link>` download paper of proper version

`chmod +x ./paper-1.16.4-366.jar` mark paper jar as executable

`sudo vi eula.txt` add `eula=true`

 
<br/>

`java -jar paper-x.xx.xxxxx.jar` init java and allow download/creation of resources

`id` (run on minecraft user to get uuid and group id)

`su chown -R uuid:group ./folder of mc jar files` give nonroot access to folder of mc jar files to minecraft user (use uuid and group id)

## copy files/make backup
`cp -r /path/to/directory /path/to/location/new-name`