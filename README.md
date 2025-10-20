### Задание 1
<img width="568" height="369" alt="Задание_1" src="https://github.com/user-attachments/assets/4c0dbdd6-6f1d-4f5a-b425-e7efae2cbf1f" /> 

<img width="1894" height="364" alt="Задание_1_1" src="https://github.com/user-attachments/assets/c70f8481-0d82-4051-9246-797073bae5bc" /> 

<img width="1137" height="836" alt="Задание_1_1_1" src="https://github.com/user-attachments/assets/a46ff693-bbe7-4ccf-a822-332b916b4984" /> 
<img width="943" height="852" alt="Задание_1_1_2" src="https://github.com/user-attachments/assets/bd297955-8322-4fb7-8e81-6b238af4a181" /> 
<img width="956" height="847" alt="Задание_1_1_3" src="https://github.com/user-attachments/assets/7324f17b-113c-4bbe-b5e7-6fb0f6d6cdac" /> 
<img width="615" height="461" alt="Задание_1_1_4" src="https://github.com/user-attachments/assets/4459e0ee-8b3d-4347-aab0-442602ea91c3" /> 

### Задание 2
<img width="486" height="197" alt="Задание_2" src="https://github.com/user-attachments/assets/07c036a2-2609-4b7a-a8f9-0c6c880d0ebf" />

### Задание 3
<img width="547" height="145" alt="Задание_2_1" src="https://github.com/user-attachments/assets/e264a105-f72c-4455-898d-13fdc1c75adf" />
<img width="792" height="223" alt="Задание_2_1_1" src="https://github.com/user-attachments/assets/c2ebaaeb-789d-490c-8732-960fa4e46ccb" />
<img width="903" height="261" alt="Задание_2_1_1_1" src="https://github.com/user-attachments/assets/effc7649-3918-412e-b9ad-b847d7115777" />
<img width="1111" height="409" alt="Задание_2_1_1_1_1" src="https://github.com/user-attachments/assets/2a9c4666-cc39-4f93-be94-eb559287d2c0" />

### Задание 4
<img width="1328" height="201" alt="Задание_4_1" src="https://github.com/user-attachments/assets/4cc1ac3a-c4eb-4a16-8597-a36ee6c101b3" />
<img width="1401" height="268" alt="Задание_4_2" src="https://github.com/user-attachments/assets/9d2a5994-2267-499e-ac59-5e8c3237a0d3" />

```
# module.vpc_dev.yandex_vpc_network.develop will be created
  + resource "yandex_vpc_network" "develop" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "develop"
      + subnet_ids                = (known after apply)
    }

  # module.vpc_dev.yandex_vpc_subnet.develop["0"] will be created
  + resource "yandex_vpc_subnet" "develop" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "develop-0"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.1.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

  # module.vpc_prod.yandex_vpc_network.develop will be created
  + resource "yandex_vpc_network" "develop" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + labels                    = (known after apply)
      + name                      = "production"
      + subnet_ids                = (known after apply)
    }

  # module.vpc_prod.yandex_vpc_subnet.develop["0"] will be created
  + resource "yandex_vpc_subnet" "develop" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "production-0"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.1.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

  # module.vpc_prod.yandex_vpc_subnet.develop["1"] will be created
  + resource "yandex_vpc_subnet" "develop" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "production-1"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.2.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-b"
    }

  # module.vpc_prod.yandex_vpc_subnet.develop["2"] will be created
  + resource "yandex_vpc_subnet" "develop" {
      + created_at     = (known after apply)
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + labels         = (known after apply)
      + name           = "production-2"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.0.3.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-d"
    }
```
