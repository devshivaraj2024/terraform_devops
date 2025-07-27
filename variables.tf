variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "instance_type" {
  default     = "t2.micro"
  description = "EC2 Instance type"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 (us-east-1)
}
