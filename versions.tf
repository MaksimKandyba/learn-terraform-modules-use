terraform {
  required_providers {
    fly = {
      source  = "fly-apps/fly"
      version = "~> 0.0.21"
    }

    random = {
      version = ">= 2.1.2"
    }
  }

  required_version = "~> 1.5.7"
}
