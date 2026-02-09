terraform {
  backend "s3" {
    # CHANGE THESE:
    bucket         = "REPLACE_ME_TFSTATE_BUCKET"
    key            = "primary-markets/dev/platform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "REPLACE_ME_TFSTATE_LOCK_TABLE"
    encrypt        = true
  }
}
