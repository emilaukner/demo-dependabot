terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.76"
    }
    
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.99"
    }
    
    google = {
      source  = "hashicorp/google"
      version = "~> 4.20"
    }
    
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.11"
    }
    
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
    
    vault = {
      source  = "hashicorp/vault"
      version = ">= 3.5.0"
    }
    
    datadog = {
      source  = "datadog/datadog"
      version = "~> 3.10"
    }
    
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "~> 1.3"
    }
    
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.15"
    }
    
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.19"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  features {}
}

provider "google" {
  project = "example-project"
  region  = "us-central1"
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

# Example resources using outdated provider versions
resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"
  
  tags = {
    Environment = "Dev"
  }
}

resource "random_id" "server" {
  byte_length = 8
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}
