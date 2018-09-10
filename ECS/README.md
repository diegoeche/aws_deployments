# Elastic Container Service Example

## Requirements

### Docker/Docker-Compose
First install [Docker](https://docs.docker.com/install/) and Docker-Compose for easy
iteration on getting the Docker image right.

### Check everything is working:

#### For local development:

`npm start`

You should be able to access the demo express app at: "http://localhost:3000"

#### For local development using docker-compose:

`docker-compose up`

You should be able to access the demo express app at: "http://localhost"

### elastic-ecs-cli

You will also need the ECS command line tool `ecs`.

[For instructions on installing it:](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html)

### Elastic Container Repository

Setup an image repository. Login to your AWS console and go to Services -> Elastic
Container Service -> Repositories.

![Like this:](./doc/ecr.png)

Name it and create it.

After that, you can login (Change the region if needed)

```
$(aws ecr get-login --no-include-email --region eu-central-1)
```

### Build the container

```
docker build -t <repo-name> .
```

### Tag the image

```
docker tag <repo-name>:latest <repo-uri>/<repo-name>:latest
```

Where `repo-name` is the name you gave the ECR. And `repo-uri` is the URI provided in
the Console. Services -> ECS -> ECR -> Choose your repo

### Push the image

```
docker push <repo-uri>/<repo-name>:latest
```

You should get something like:

```
#Output
The push refers to repository [<repo-uri>]
latest: digest: sha256:fb1e40e2f34e14b5a5f4ba1811d3ba7bd48c1a1d4beb44686b78afa4e83760ac size: 1787
```

### Create a new Cluster

### Deploying changes:

### Configuring Environment

### Test Local Environment

### If something goes wrong:

### Destroy environment:

## Sources:

- https://semaphoreci.com/community/tutorials/continuous-deployment-of-a-dockerized-node-js-application-to-aws-ecs
- https://medium.com/@alttaf/a-node-app-on-amazon-ecs-using-the-mean-stack-4fbdad5714f8
- https://start.jcolemorrison.com/guide-to-fault-tolerant-and-load-balanced-aws-docker-deployment-on-ecs/
