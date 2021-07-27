# Docker. client options 

<img src="cli.png">

## Deploy webui in Docker ENgine 

```
docker  run -itd --name webui -p 9000:9000 --restart always -v  /var/run/docker.sock:/var/run/docker.sock portainer/portainer 
Unable to find image 'portainer/portainer:latest' locally

```

