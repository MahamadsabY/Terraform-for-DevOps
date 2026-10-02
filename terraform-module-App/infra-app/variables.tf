variable "env" {
    description = "This is the environment for my infra"
    type = string  
}

variable "bucket_name" {
    description = "This is the bucket name for my infra"
    type = string  
}

variable "instance_count" {
    description = "This is the number of ec2 instances"
    type = number
}

variable "instance_type" {
    description = "This is instance type of my infra"
    type = string
  
}
variable "ec2_ami_id" {
    description = "This is ami id of my infra"
    type = string
}

variable "hash_key" {
    description = "This is the hash key of my dynamo db"
  
}