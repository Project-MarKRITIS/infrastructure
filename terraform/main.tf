terraform {
  required_version = "~> 1.16"
  cloud {
    organization = "HAW_Project_MarKRITIS"
    workspaces {
      name = "infrastructure"
    }
  }

  required_providers {
    hcloud = {
        source = "hetznercloud/hcloud"
        version = "1.68.0"
    }
  }
}

provider "hcloud" {
    token = var.hcloud_token
  
}