terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

/*resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleAppServerInstance"
  }
}
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
*/



/*resource "aws_db_instance" "example" {
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "example"
  # Set the secrets from AWS Secrets Manager
  username = local.db_creds.username
  password = local.db_creds.password
}

data "aws_secretsmanager_secret_version" "creds"{
  secret_id = "db-creds"
}

locals {
  db_creds = jsondecode (data.aws_secretsmanager_secret_version.creds.secret_string)
}
*/

module "bucket" {

source = "git::https://git@github.com/rconislla/platform-module-s3-demo.git//aws-module?ref=master"
bucket = "hola-peru-demo"


}
