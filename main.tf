resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Mumbai-Terraform-EC2"
  }
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "tf_bucket" {
  bucket        = "terraform-mumbai-${random_id.bucket_id.hex}"
  force_destroy = true
}
