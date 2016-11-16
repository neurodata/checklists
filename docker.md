## Principles to follow:

1. base your image on an existing neurodata image, such as [`neurodata/ndio`](https://hub.docker.com/r/neurodata/ndio/)
2. define an entrypoint for your container
  - if it is a pipeline, have the entrypoint be launching the pipeline
  - if it is an environment, have the entrypoint be `/bin/bash`
3. do not store data in the container
  - the only exception: if the data in question will be needed by every person ever trying to run this service (i.e. an atlas)
4. manage version of containers on your machine
  - `docker images` lists all locally available images. If you build a new image with the same name as an existing image, the name of the existing image will be replaced with a hash. If you do not delete these images, they will continue to take up lots of space and make finding the images you care about difficult
  - `docker rmi` removes images
5. manage running and exited images on your machine
  - `docker ps` lists images that are running on your system, their names, the image they are based on, and the ports they are using
  - `docker ps -a` lists images that have exited but were running on your system, and their caches actually take up space
  - `docker rm` removes exited images on the machine, freeing up that valuable disk space
6. name your images at launch
  - the `--name` flag of `docker run` enables you to give a running title to your image. When multiple users are executing services on the same server, this is essential for understanding which instances are doing what
  - no two images can have the same name, which will encourage you to remove images you've run prior to launching new ones
7. do not run as the root user in the system
  - docker provides a contained environment, but if you mount a local partition to the image and the user has root access, they can damage the host system. For instance, one should **NEVER** mount the `/` directory of the main system to their container under any circumstance, but especially if a docker user had root access and could destroy the host
8. do not mount the `/` directory to your container
  - just a terrible idea......
9. ask questions if you don't know how to do things
  - we would always much rather answer questions than be frustrated that you broke something. If you don't know how to do something, ask a very specific question of your problem (and provide sufficient context if you want a speedy answer)
10. when pushing your image to docker hub, follow guidelines set in documentation at [`neurodata/template`](https://hub.docker.com/r/neurodata/template/)
11. do not touch anybody else's containers, or your access will be revoked
12. know that your system administrator reserves the right to remove all containers s/he deems to not be built in accordance to the above policies without notice
