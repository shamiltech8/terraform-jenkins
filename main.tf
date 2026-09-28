terraform {
  required_version = ">= 1.16.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "jenkins_test" {
  filename = "${path.module}/jenkins-test.txt"
  content  = "Terraform executed successfully through Jenkins."
}
