output "ssh_public_key" {
  value = data.template_file.ssh_key
}