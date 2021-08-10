# ------------------------------------------------------------------------------
# CONFIGURE OUR AWS CONNECTION
# ------------------------------------------------------------------------------

provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "three-tier-architecture-tfstate-bucket"
    key    = "architecture.tfstate"
    region = "var.region"
  }
}
