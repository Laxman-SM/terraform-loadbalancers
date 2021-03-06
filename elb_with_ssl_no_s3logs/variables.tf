variable "project" {}

variable "environment" {}

variable "name" {}

variable "backend_sg" {
  type = "list"
}

# https://github.com/hashicorp/terraform/issues/10857
variable "backend_sg_count" {}

variable "subnets" {
  description = "A list of subnet IDs to attach to the ELB."
  type        = "list"
}

variable "internal" {
  description = "If true, ELB will be an internal ELB."
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle."
  default     = "60"
}

variable "connection_draining" {
  description = "Boolean to enable connection draining."
  default     = true
}

variable "connection_draining_timeout" {
  description = "The time in seconds to allow for connections to drain."
  default     = "60"
}

variable "instance_port" {
  description = "The port on the instance to route to"
  default     = 80
}

variable "instance_protocol" {
  description = "The protocol to use to the instance. Valid values are HTTP, HTTPS, TCP, or SSL"
  default     = "http"
}

variable "lb_port" {
  description = "The port to listen on for the load balancer"
  default     = 80
}

variable "lb_protocol" {
  description = "The protocol to listen on. Valid values are HTTP, HTTPS, TCP, or SSL"
  default     = "http"
}

variable "instance_ssl_port" {
  description = "The port on the instance to route to"
  default     = 443
}

variable "instance_ssl_protocol" {
  description = "The protocol to use to the instance. Valid values are HTTP, HTTPS, TCP, or SSL"
  default     = "http"
}

variable "lb_ssl_port" {
  description = "The port to listen on for the load balancer"
  default     = 443
}

variable "lb_ssl_protocol" {
  description = "The protocol to listen on. Valid values are HTTP, HTTPS, TCP, or SSL"
  default     = "https"
}

variable "ssl_certificate_id" {
  description = " The ARN of an SSL certificate you have uploaded to AWS IAM. Only valid when lb_protocol is either HTTPS or SSL"
}

variable "healthy_threshold" {
  description = "The number of checks before the instance is declared healthy."
  default     = 3
}

variable "unhealthy_threshold" {
  description = "The number of checks before the instance is declared unhealthy."
  default     = 2
}

variable "health_timeout" {
  description = "The length of time before the check times out."
  default     = 3
}

variable "health_target" {
  description = "The target of the check. Valid pattern is ${PROTOCOL}:${PORT}${PATH}"
}

variable "health_interval" {
  description = " The interval between checks."
  default     = 30
}

variable "ingoing_allowed_ips" {
  default = ["0.0.0.0/0"]
  type    = "list"
}
