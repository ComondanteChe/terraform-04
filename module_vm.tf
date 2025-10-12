module "test-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "develop" 
  network_id     = yandex_vpc_network.develop.id
  subnet_zones   = "ru-central1-a"
  subnet_ids     = yandex_vpc_subnet.develop.id
  instance_name  = "webs"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true

  labels = { 
      project = "marketing"
     }

  metadata = {
    serial-port-enable = 1
  }

}