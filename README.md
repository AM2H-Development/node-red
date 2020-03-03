# node-red
Node RED with Theia IDE for development

install either with docker-compose:
* git clone https://github.com/AM2H-Development/node-red.git
* cd node-red
* docker-compose up -d

or

from Docker hub:
* docker volume create --name node_red_user_data
* docker run -it -p 1880:1880 -p 4444:4444 -v node_red_user_data:/data --name mynodered nodered/node-red

Node-RED on port 1880, Theia Editor on port 4444
