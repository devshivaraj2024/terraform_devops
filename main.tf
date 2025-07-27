resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Jenkins-Terraform-EC2"
  }
}

resource "aws_s3_bucket" "tf_bucket" {
  bucket = "jenkins-terraform-demo-${random_id.bucket_id.hex}"
  force_destroy = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}
