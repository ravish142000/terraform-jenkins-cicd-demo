terraform {
  backend "s3" {
    bucket       = "jenkins-state-bucket6767"
    key          = "terraform/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
