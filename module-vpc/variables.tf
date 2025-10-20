variable "env_name" {
    type = string
}

variable "subnet" {
    type = list(object({
        zone = string
        v4_cidr = list(string)
    }))
}