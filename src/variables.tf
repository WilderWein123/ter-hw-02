###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1gcd1nmr4tl1hd9duc8"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gj6ia0559mol9ufg9k"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "token"{
  type        = string
  description = "enter secret token"
}

###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDlLc9tAx9tK7/MK+4I0n7a535xrIX+GT/DRwJpxEmojEmgZXwHtLJtBQTAFjV70ZwDfB9amWHZiWyigP9UP5o5YntsNhm3wXCRS/AbLbgt1foxGpGXsDqnPb0+LyFzxMl2WlKHxH84bZ0GMFp7/TKgacxZlEMz1QFuLyU4QIW8PyyFGdblHbnXz7Dp+PgEd6nRlnjNH/hP+o+0wGOhgDwUTS0gAlJOMxSJglD7ixBwuZURYlE1sgBF7lnJQfHTwVh+huJFaZDCGwA2NG2PUWbECG85joUsqpa4ofunxiHkyp23TQJMVxGAne+42FnzwWuYDJFAlEW5gdBXn+RYj1qLoqKLnIAPQ6ZvCdt3+cjgKje3x4k6vLSSeaBPQp1aShdoD9vRQ/TlGw2ebN0H/EFlPEasg5PGMqVehfGoJGRu/RN5MLjnT8XKM3wc7Kkft+d8EzRJtsYCPn53N6Bt0gsHvszKHueI8PKF+5bC8NXYHtStDLlIWEbbORPAuK/2Z70= seregin@msk-s3-arm076"
  description = "ssh-keygen -t ed25519"
}

variable vm {
  type = map(object({
    cores = number
    memory = number
    core_fraction = number
    image = string
  }))
    default = { 
      "web-develop" = {
        cores = 2
        memory = 1
        core_fraction = 5
        image = "ubuntu-2204-lts"
      },
      "db" = {
        cores = 2
        memory = 2
        core_fraction = 20
        image = "ubuntu-2204-lts"
        zone = "ru.central1-b"
      }
  }
}