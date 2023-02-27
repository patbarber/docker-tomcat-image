# Simple tomcat docker container 

## Commands

### Build image

$ docker build -t [image name] [path]

Eg.

`$ docker build -t mytomcat .`

Run 
`$ docker -d --name tomcat-server -p 8081:8080 mytomcat`
