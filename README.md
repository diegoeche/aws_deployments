# Deploying in AWS

The following repo contains some simple "show-me-the-code" template/tutorials for
different strategies for deploying in AWS a very simple NodeJS application.

IMHO, they are ordered by efficiency in terms of "getting-shit-done".

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

## <a href="https://github.com/diegoeche/aws_deployments/tree/master/EB">Using EB</a>

## <a href="https://github.com/diegoeche/aws_deployments/tree/master/Terraform">Using Terraform</a>

## <a href="https://github.com/diegoeche/aws_deployments/tree/master/ECS">Using ECS</a>
