variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "environment" {
  description = "Environment for name"
  default     = "default"
}
variable "subnet_id" {
  description = "Subnets for modules"
}
