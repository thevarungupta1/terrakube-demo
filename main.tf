terraform {
  required_version = ">= 1.5.0"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

variable "environment" {
  type    = string
  default = "dev"
}

resource "random_pet" "application" {
  length    = 2
  separator = "-"
  prefix    = var.environment
}

output "application_name" {
  value = random_pet.application.id
}