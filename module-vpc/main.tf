terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=1.8.4"  ### some test
}

resource "yandex_vpc_network" "develop" {
  name = var.env_name
}
resource "yandex_vpc_subnet" "develop" {
  for_each = { for i, v in var.subnet : i => v }

  name            = "${var.env_name}-${each.key}"
  zone            = each.value.zone
  v4_cidr_blocks  = each.value.v4_cidr
  network_id      = yandex_vpc_network.develop.id
}
