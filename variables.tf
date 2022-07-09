variable "aws_bastion_instance_type" {
  type = string
}
variable "bilh_aws_demo_master_key_name" {
  type = string
}
variable "bilh_aws_demo_master_key_pub" {
  type      = string
  sensitive = true
}
variable "aws_profile" {
  type        = string
  description = "AWS profile."
}
variable "bilh_aws_demo_master_key" {
  type = string
}

variable "rubrik_support_password" {
  type = string
}

variable "aws_prefix" {
  
}

variable "rubrik_admin_email" {
  type = string
}
variable "rubrik_user" {
  type    = string
  default = "admin"
}
variable "rubrik_pass" {
  type = string
  default = "rubrik123"
}
variable "rubrik_cluster_name" {
  type = string
  default = "rubrik-cloud-cluster"
}
variable "rubrik_node_count" {
  type = number
  default = 3
}
variable "rubrik_dns_nameservers" {
  type = string
  default = "8.8.8.8"
}
variable "rubrik_dns_search_domain" {
  type = string
  default = ""
}
variable "rubrik_ntp_servers" {
  type = string
  default = "pool.ntp.org"
}
variable "rubrik_use_cloud_storage" {
  type = string
  default = "y"
}
variable "ssh_key_pair_path" {
  type = string
  default = "/home/ec2-user/.ssh/"
}

variable "rubrik_fileset_name_prefix" {
  type    = string
  default = "EPIC"
}
variable "rubrik_fileset_folder_path" {
  type    = string
  default = "/mnt/epic-iscsi-vol"
}

variable "aws_region" {
  type = string
}
variable "aws_zone" {
  type = string
}
