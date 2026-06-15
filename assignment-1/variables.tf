variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
variable "ami_id" {
  description = "Ubuntu AMI ID"
  type        = string
  default     = "ami-0d114020bf27f27cf"
}