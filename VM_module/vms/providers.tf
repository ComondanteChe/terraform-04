terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = "~>1.8.4"
}

provider "yandex" {
  # token                    = "do not use!!!"
  cloud_id                 = "b1g7i90u6v2v15jrqpdj"
  folder_id                = "b1gnfat6d5tspst8frqn"
  service_account_key_file = file("~/.ssh/.authorized_key.json")
  zone                     = "ru-central1-a" #(Optional) 
}
