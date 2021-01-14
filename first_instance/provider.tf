terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.52.0"
    }
  }
}

provider "google" {
  project = "basic-perigee-273009"
  region = "asia-east2"
  credentials = file("credentials/credentials.json")
}