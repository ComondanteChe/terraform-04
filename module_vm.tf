module "vpc_prod" {
  source         = "./module-vpc"
  env_name       = "production"
  subnet        = [
    {zone="ru-central1-a", v4_cidr=["10.0.1.0/24"]},
    {zone="ru-central1-b", v4_cidr=["10.0.2.0/24"]},
    {zone="ru-central1-d", v4_cidr=["10.0.3.0/24"]}
  ]
}

module "vpc_dev" {
  source         = "./module-vpc"
  env_name       = "develop"
  subnet        = [
    {zone="ru-central1-a", v4_cidr=["10.0.1.0/24"]}
  ]
}

module "marketing-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "marketing"
  network_id     = module.vpc_prod.vpc_network_id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = module.vpc_prod.vpc_subnet_id
  instance_name  = "web-marketing"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true


  labels = {
    owner= "e.osipov"
    project = "marketing"
  }

  metadata = {
    user-data = templatefile("${path.module}/cloud-init.yml", { 
      ssh_public_key = var.ssh_public_key
      HOSTNAME = "web-marketing"
     })
    serial-port-enable = 1
  }

}

module "analytics-vm" {
  source         = "git::https://github.com/udjin10/yandex_compute_instance.git?ref=main"
  env_name       = "analytics"
  network_id     = module.vpc_prod.vpc_network_id
  subnet_zones   = ["ru-central1-a"]
  subnet_ids     = module.vpc_prod.vpc_subnet_id
  instance_name  = "web-analytics"
  instance_count = 1
  image_family   = "ubuntu-2004-lts"
  public_ip      = true

  labels = {
    owner= "e.osipov"
    project = "analytics"
  }

  metadata = {
    user-data = templatefile("${path.module}/cloud-init.yml", { 
      ssh_public_key = var.ssh_public_key
      HOSTNAME = "web-marketing"
      })
    serial-port-enable = 1
  }

}