variable "location" {
  default = "eastus"    #"west europe"  #"north europe" #"eastus"   #"south india"  #
}



variable "env" {
  description = "env"
  type        = string
  default = "prod"
}
variable "postfix" {
  description = "postfix"
  type        = string
  default = "inve"
}
variable "app" {
  description = ""
  type        = string
  default = "McD"
}
