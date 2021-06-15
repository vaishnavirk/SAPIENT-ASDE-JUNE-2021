# SAPIENT ASDE - JUNE, 2021

### Useful stuffs

-   [Markdown cheatsheet](https://github.com/kayartaya-vinod/markdown-here 'Markdown cheatsheet')
-   [Get Started With Maven For Building Java Applications](https://medium.com/edureka/maven-tutorial-2e87a4669faf 'Get Started With Maven For Building Java Applications')
-   [Complete Jenkins Pipeline Tutorial](https://www.youtube.com/watch?v=7KCS70sCoK0&t=12s 'Complete Jenkins Pipeline Tutorial')
-   [Docker beginner's guide](https://medium.com/codingthesmartway-com-blog/docker-beginners-guide-part-1-images-containers-6f3507fffc98 'Docker beginners guid')
-   [Docker Tutorial for Beginners [FULL COURSE in 3 Hours]](https://www.youtube.com/watch?v=3c-iBn73dDE&t=3180s 'Docker Tutorial for Beginners [FULL COURSE in 3 Hours]')
-   [Everything you need to know about Docker](https://medium.com/@ivjot/docker-2123ced7a85c 'Everything you need to know about Docker')

### Docker cheatsheet

-   `docker version` check docker client/server version
-   `docker image ls` or `docker images` lists all available images
-   `docker image rm <image-id>` or `docker rmi <image-id>` removes the specified image
-   `docker pull <image:tag>` downloads the specified image:tag. If tag is not specified, defaults to _latest_
-   `docker run <image:tag>` creates and starts a new container from the image specified. Runs the default startup command of the image
-   `docker stop <contianer-id-or-name>` stops (graceful shutdown) the specified container
-   `docker kill <container-id-or-name>` kills the specified container immediately
-   `docker start <container-id-or-name>` starts the stopped container
-   `docker ps` lists all running containers
-   `docker ps -a` lists all running as well as stopped containers
-   `docker container rm <container-id-or-name>` or `docker rm <container-id-or-name>` removes the specified stopped container. Add `-f` to remove forcefully
-   `docker container prune` removes all stopped containers
-   `docker system prune` removes all stopped containers, unused networks, dangling images and dangling build cache
-   `docker exec -it <container-id-name> <command>` executes the specfied command on the specified running container
