data template_file "ssh" {
  template = file("${path.module}/cloud-init.yaml")

    vars = {
        ssh_publoc_key = file(var.public_key)
    }
}