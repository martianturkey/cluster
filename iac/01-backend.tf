terraform {
  backend "s3" {
    bucket = "mct-remote-state"
    key    = "cluster"
    region = "eu-west-2"
  }
}
