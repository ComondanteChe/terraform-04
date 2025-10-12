data template_file "ssh_key" {
  template = file("${path.module}/cloud-init.yml")

    vars = {
      ssh_key = var.vms_ssh_root_key
    }
}