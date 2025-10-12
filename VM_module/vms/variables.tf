###cloud vars

variable "public_key" {
  type    = string
  default = file ("~/.ssh/id_ed25519.pub")
}
