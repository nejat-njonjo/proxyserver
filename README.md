# proxyserver
A proxy server using Nginx and Docker.

# USAGE

## Heroku

- Replace a listening port with ENV variable ```$PORT```.
- Add ```heroku.yml``` file in root directory and paste the following code.

```yml
build:
  docker:
    web: Dockerfile
```

## Local

Create networks with other containers and build the image.

## Google Cloud

- Change the listening port to 8080
- Configure a flex ```app.yml``` and deploy.
