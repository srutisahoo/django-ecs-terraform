#core
variable "region" {
  description = "The AWS region to create resources in."
  default     = "us-east-1"
}

# networking
variable "avaliability_zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = ["us-east-1b", "us-east-1c"]

}

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
  default     = "10.0.2.0/24"
}

variable "private_subnet_1_cidr" {
  description = "CIDR Block for private Subnet 1"
  default     = "10.0.3.0/24"
}

variable "private_subnet_2_cidr" {
  description = "CIDR Block for private Subnet 2"
  default     = "10.0.4.0/24"
}

# load balancer
variable "health_check_path" {
  description = "Health check path for the default target group"
  default     = "/ping/"
}


# ecs
variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  default     = "production"
}

variable "amis" {
  description = "Which AMI to spawn."
  default = {
    us-east-1 = "ami-08ce0269b718c03ab"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

variable "docker_image_url_django" {
  description = "Docker image to run in the ECS cluster"
  default     = "676013520161.dkr.ecr.us-east-1.amazonaws.com/terraformlearning:django-app"
}

variable "docker_image_url_nginx" {
  description = "Docker image to run in the ECS cluster"
  default     = "<AWS_ACCOUNT_ID>.dkr.ecr.us-west-1.amazonaws.com/terraformlearning:nginx"
}

variable "app_count" {
  description = "Number of Docker containers to run"
  default     = 2
}

variable "allowed_hosts" {
  description = "Domain name for allowed hosts"
  default     = "app.habits.chat"
}

# logs
variable "log_retention_in_days" {
  default = 30
}

variable "ssh_pubkey_file" {
  description = "Path to an SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}

# auto scaling
variable "autoscale_min" {
  description = "Minimum autoscale (number of EC2)"
  default     = "1"
}
variable "autoscale_max" {
  description = "Maximum autoscale (number of EC2)"
  default     = "10"
}
variable "autoscale_desired" {
  description = "Desired autoscale (number of EC2)"
  default     = "4"
}

# rds
variable "rds_db_name" {
  description = "RDS database name"
  default     = "mydb"
}
variable "rds_username" {
  description = "RDS database username"
  default     = "foo"
}
variable "rds_password" {
  description = "RDS database password"
}
variable "rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t2.micro"
}