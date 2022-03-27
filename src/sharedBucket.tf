# Shared bucket
resource "aws_s3_bucket" "shared-bucket" {
  bucket = "rpt-shared-bucket"

  tags = {
    Name        = "rpt-shared-bucket"
    Environment = "dev"
  }
}
