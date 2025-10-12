module "example-vm_01" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "stage1"
  network_id     = yandex_vpc_network.develop.id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = [yandex_vpc_subnet.develop.id]
  instance_name  = "web-stage1"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true

  labels = {
    owner= "e.osipov"
    project = "marketing"
  }

  metadata = {
    serial-port-enable = 1
  }

}

module "example-vm_02" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "stage2"
  network_id     = yandex_vpc_network.develop.id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = [yandex_vpc_subnet.develop.id]
  instance_name  = "web-stage2"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true

  labels = {
    owner= "e.osipov"
    project = "analytics"
  }

  metadata = {
    serial-port-enable = 1
  }

}