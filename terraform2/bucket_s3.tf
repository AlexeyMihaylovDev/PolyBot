resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name

  tags = {
    Name        = "${var.project_name}-bucket"
    Environment = "tf"
  }
}

resource "aws_s3_bucket_acl" "buck_acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = "private"
}

## Upload an object
resource "aws_s3_object" "assassinatos" {
  bucket = aws_s3_bucket.bucket.id
  key    = "data/.envfile"
  acl    = "private"
  source = "D:/elements/project/PolyBot/.envfile"
}
resource "aws_s3_object" "telegram" {
  bucket = aws_s3_bucket.bucket.id
  key    = "data/.telegramToken"
  acl    = "private"
  source = "D:/elements/project/PolyBot/.telegramToken"
}
#resource "aws_s3_object" "script" {
#  bucket = aws_s3_bucket.bucket.id
#  key    = "data/script.sh"
#  acl    = "private"
#  source = "D:/elements/project/PolyBot/terraform2/ec2_user_data.sh"
##  etag   = filemd5("D:/elements/project/PolyBot/.envfile")
#}