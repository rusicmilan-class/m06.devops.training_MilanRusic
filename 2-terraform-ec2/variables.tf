variable "AWS_ACCESS_KEY_ID" {
  description = "Access ID to the AWS (LocalStack) Account"
  type        = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Access token to the AWS (LocalStack) Account"
  type        = string
}

variable "AWS_DEFAULT_REGION" {
  description = "Default region for the AWS (LocalStack)"
  type        = string
  default     = "us-east-1"
}

variable "aws_endpoint" {
  description = "Override default endpoint for AWS API"
  type        = string
  default     = "http://devops.tomfern.com:31566"
}

variable "os_image" {
  description = "OS image for the VM"
  type        = string
  default     = "ami-04e914639d0cca79a"
}

variable "machine_size" {
  description = "Size of the VM"
  type        = string
  default     = "t2.micro"
}

variable "machine_name" {
  description = "Name of the VM"
  type        = string
  default     = "group1-vm"

  validation {
    condition     = can(regex("^[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$", var.machine_name))
    error_message = "machine_name must be 2-63 chars, lowercase letters/numbers/hyphens, start/end with letter or number."
  }
}

