# Postgres SSL

The image built by this repository is based on the [latest stable alpine postgres](https://hub.docker.com/layers/library/postgres/alpine3.20/images/sha256-b40547ea0c7bcb401d8f11c6a233ebe65e2067e5966e54ccf9b03c5f01c2957c?context=explore).

It will generate SSL certificates at build time and set them up.

The RSA modulus length used for certificate generation is 4096, and it all depends on the `openssl` library.

The `docker-compose.yml` file may be used to both build and start the image. It creates a `db` service with the built image.

It also includes the `adminer` service to let you test the database connection and verify the init.{sh,sql} was executed successfully.

You can configure your environment variable the same way you would by using postgres originally.

The build docker image will be named `postgres:ssl` so you can refer to it easily.
