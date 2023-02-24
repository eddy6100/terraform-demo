terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("hip-gecko-322810-0188650f5580.json")

  project = "hip-gecko-322810"
  region  = "europe-west1"
  zone    = "europe-west1-c"

}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
