output "vpc_subnet_id" {
  value = [for s in yandex_vpc_subnet.develop : s.id]
}

output "vpc_network_id" {
  value = yandex_vpc_network.develop.id
}

output "v4_cidr_blocks" {
  value = [for s in yandex_vpc_subnet.develop : s.v4_cidr_blocks]
}

output "env_name" {
  value = var.env_name
}