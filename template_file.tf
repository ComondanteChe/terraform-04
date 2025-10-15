data template_file "ssh_key" {
  template = file("${path.module}/cloud-init.yml")

    vars = {
       ssh_public_key = list(string[var.ssh_public_key])
       HOSTNAME = "${var.vm_web_name}"
    }
}