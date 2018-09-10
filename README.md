# Elastic Beanstalk Example

## Requirements

First install [Docker](https://docs.docker.com/install/) and Docker-Compose for easy
iteration on getting the Docker image right.

You will also need the elastic-beanstalk command line tool `eb`.

[Instruction for installing eb](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)

### Check everything is working:

#### For local development:

`npm start`

You should be able to access the demo express app at: "http://localhost:3000"

#### For local development using docker-compose:

`docker-compose up`

You should be able to access the demo express app at: "http://localhost"

## Setup:

### Setup your credentials

Create an access token for eb and add it to your local configuration.

```
# ~/.aws-config
[default]
aws_access_key_id=<id>
aws_secret_access_key=<access-key>
region=eu-central-1
```

```
# ~/.aws/config
[default]
aws_access_key_id=<id>
aws_secret_access_key=<access-key>
region=eu-central-1
```

### Create a new EB environment

Inside the repository:

`eb init`

`eb create test`

`eb open` should open the current selected environment (`test`)

### Deploying changes:

Save your changes and then do: `eb deploy`

### Configuring Environment

`eb config`

### Test Local Environment

`eb local run`

### If something goes wrong:

`eb logs`


## Sources:

https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/nodejs-getstarted.html
