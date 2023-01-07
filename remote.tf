terraform {
  backend "s3" {
    bucket = "tfstate-fatgate-remote"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}