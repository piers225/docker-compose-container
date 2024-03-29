# Docker Run Command

Creates an image for the docker-compose tool. This saves us from needing to installed other 3rd party dependents.

## Command

```bash
docker build -t docker-compose-local .
```

```bash
docker run -ti --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(pwd):/code \
    my-docker-compose-image \
    -f /code/docker-compose.yml up -d
```


## Explanation

- `-ti`: Starts the container in interactive mode with a pseudo-TTY.
- `--rm`: Removes the container and its filesystem after it stops.
- `-v /var/run/docker.sock:/var/run/docker.sock`: Mounts the Docker socket from the host into the container. This allows the container to interact with the Docker daemon on the host.
- `-v $(pwd):/code`: Mounts the current working directory (`$(pwd)`) from the host into the `/code` directory in the container.
- `my-docker-compose-image`: Specifies the Docker image to run. In this case, it's `my-docker-compose-image`.
- `-f /code/docker-compose.yml up -d`: Passes the `-f` option to specify the Docker Compose file (`/code/docker-compose.yml`), followed by `up -d` to start the services defined in the Docker Compose file in detached mode.

## References

- [Docker run reference](https://docs.docker.com/engine/reference/run/)
- [Docker storage volumes](https://docs.docker.com/storage/volumes/)
- [Docker Compose file reference](https://docs.docker.com/compose/compose-file/)

