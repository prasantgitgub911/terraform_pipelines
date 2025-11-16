 terraform {
    backend "s3" {
        bucket = "prasant-aws-s3"
        key    = "terraform/state/terraform.tfstate"
        use_lockfile = "true"
        region = "eu-north-1"
    }
   
 }
