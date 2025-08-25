terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "example" {
  ami           = "ami-02d26659fd82cf299"   # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}



terraform {
  backend "s3" {
    bucket         = "my.aws.bucket.for.atlantis"
    key            = "project/terraform.tfstate"
    region         = "ap-south-1"
    use_lockfile   = true
    encrypt        = true
  }
}
