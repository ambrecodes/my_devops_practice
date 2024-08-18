terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket"
    region = "us-east-1"
  }
}
