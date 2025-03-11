## Create project,
[corporealsoul@corporealsoul-server 12:35:01 ~]$ express --no-view CLI-Interactive-Express-2025

[corporealsoul@corporealsoul-server 12:35:38 ~]$ cd CLI-Interactive-Express-2025
[corporealsoul@corporealsoul-server 12:36:49 CLI-Interactive-Express-2025]$ npm install
[corporealsoul@corporealsoul-server 12:37:10 CLI-Interactive-Express-2025]$ npm audit fix --force
[corporealsoul@corporealsoul-server 12:37:39 CLI-Interactive-Express-2025]$ DEBUG=cli-interactive-express-2025:* npm start


## Firewall,
[corporealsoul@corporealsoul-server 12:38:23 CLI-Interactive-Express-2025]$ sudo firewall-cmd --add-port=3000/tcp --permanent
[corporealsoul@corporealsoul-server 12:38:36 CLI-Interactive-Express-2025]$ sudo firewall-cmd --reload



## Navigation,
Navigate to http://192.168.56.4:3000/ in a browser


## Dockerise the APP
[corporealsoul@corporealsoul-server 13:14:54 CLI-Interactive-Express-2025]$ docker build -t corporealsoul/cli-interactive-express-2025:ExpressAPPV0 .
[corporealsoul@corporealsoul-server 13:22:29 CLI-Interactive-Express-2025]$ docker run -d -p 3000:3000 --name cli-interactive-express-2025 corporealsoul/cli-interactive-express-2025:ExpressAPPV0
[corporealsoul@corporealsoul-server 13:25:14 CLI-Interactive-Express-2025]$ docker ps
[corporealsoul@corporealsoul-server 13:25:14 CLI-Interactive-Express-2025]$ docker start cli-interactive-express-2025

[corporealsoul@corporealsoul-server 13:26:27 CLI-Interactive-Express-2025]$ docker login -u ' ' -p ' '
[corporealsoul@corporealsoul-server 13:26:32 CLI-Interactive-Express-2025]$ docker push corporealsoul/cli-interactive-express-2025:ExpressAPPV0