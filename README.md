# wordpress-ecs

## Installation
- Install docker and docker compose
- run docker compose up -d
- run **composer install inside php-fpm container created**
- go to localhost:8081 and it should prompt you to install wordpress along with the database tables

## AWS/Terraform
- create a new AWS account if you have not
- add new users
- make sure the new user have 
- create new s3 bucket called "stefan-terraform-bucket"
- cd into terraform folder
- do terraform init
- and do terraform deploy to deploy the resources
- do not forget to terraform destroy to avoid unexpected billing.
