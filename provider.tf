terraform {
  required_providers {
    spotify = {
      version = "~> 0.1.5"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  # Configuration options
  # auth_server = "http://localhost:27228"
  api_key= var.api_key
}