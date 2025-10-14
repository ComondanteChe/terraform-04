output "out" {
    value = concat(module.marketing-vm.fqdn, module.analytics-vm.fqdn)
}

output "cloud-init" {
   value = data.template_file.ssh_key
}