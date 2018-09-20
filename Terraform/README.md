# Terraform Example

A simple 2 tier app with stateless app-servers behind a ELB.

## Requirements

For using terraform you will only need the Terraform binary package that can be
[downloaded here](https://www.terraform.io/downloads.html)

## Getting Started

Create your terraform key:

```
ssh-keygen -t rsa -b 4096 -C "diegoeche@gmail.com"
```

Call it `terraform` and add it to the ssh-agent

```
ssh-add -K ~/.ssh/terraform
```

### Setup the AWS Plugin

```
terraform init
```

### Show what would be changed

```
terraform plan
```

### Change infrastructure to match current definitions

```
terraform apply
```

```
Outputs:

address = <your-elb-url>
```


### Destroy:

```
terraform destroy
```

# Deploys:

Terraform just provided the infrastructure. For deploying the app we use capistrano.

```
gem install capistrano
gem install capistrano-npm
cap install
```

Update your `production.rb`.

Create a key and deploy it to your repository.

# Resources

* https://github.com/terraform-providers/terraform-provider-aws/tree/master/examples/two-tier
