variable "env" {
  description = "env"
  type        = string
}
variable "postfix" {
  description = "postfix"
  type        = string
}
variable "app" {
  description = ""
  type        = string
}
variable "location" {
  type    = string
  default = null
}
variable "tags" {
  type = map(any)
}