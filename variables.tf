variable "aws_region" {
  description = "AWS region for deployment"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance in ap-south-1"
  default     = "ami-0a0f1259dd1c90938" # ✅ Amazon Linux 2 AMI for Mumbai (ap-south-1)
}
