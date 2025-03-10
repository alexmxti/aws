variable "AWS_SECRET_ACCESS_KEY" {
  description = "AWS Secret Access Key for Deployment User"
  type        = string
  default     = ""
}

variable "AWS_ACCESS_KEY_ID" {
  description = "AWS Access Key for Deployment User"
  type        = string
  default     = ""
}

variable "AWS_REGION" {
  description = "Default Region"
  type        = string
  default     = "eu-west-2"
}