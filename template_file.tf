data template_file "ssh_key" {
  template = file("${path.module}/cloud-init.yml")

    vars = {
       ssh_public_key = list(string[ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIfVKappDvBQ9kbqze6JrwUpNwdaS9/W8TH47whYi2ls administrator@Educational])
       HOSTNAME = "${var.vm_web_name}"
    }
}