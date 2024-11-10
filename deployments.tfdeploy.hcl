locals {
  location = "eastus"
  project = "tfstack-testing"
}

deployment "dev" {
    inputs = {
        location = local.location
        subscription_id = "f23f047e-1868-4aea-b9a6-0c297d1d5a43"
        prefix = "tfstack"
        suffix = "644547"
        cidr_range = "10.0.0.0/16"
        subnets = {
            subnet1 = ["10.0.0.0/24"]
        }
        tags = {
            environment = "dev"
            project = local.project
        }
    }
}