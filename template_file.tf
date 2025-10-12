data template_file "ssh_key" {
  template = file("${path.module}/cloud-init.yml")

    vars = {
       ssh_key = file(var.ssh_public_key)
    }
}