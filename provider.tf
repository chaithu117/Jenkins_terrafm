# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "3.74.0"
#     }
#   }
# }

provider "aws" {
  region  = "us-east-1"
  profile = "profile-with-no-valid-creds"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
