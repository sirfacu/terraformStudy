variable "def-tags" {
  type = map(any)
  default = {
    env       = "lab-32"
    author    = "Ing. Andres Carrillo"
    studyCase = "practiceProvisionersOnFailure"
  }
}
variable "instanceType" {
  type    = string
  default = "t2.micro"
}
variable "myIP" {
  type    = string
  default = "181.237.59.20/32"
}
variable "sgname_webservers" {
  type    = string
  default = "lab32-practiceProvisionersOnFailure"

}
variable "ssh_key_name" {
  type    = string
  default = "terraform-key"
}
variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [22, 80]
}
variable "sg_ports_outbound" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [80]
}

/*


  tags = merge("${var.def-tags}",{Name="lab32-practiceProvisionersOnFailure"})


*/
