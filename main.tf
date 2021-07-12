terraform {
  backend "remote" {
    organization = "nikolay-paid"

    workspaces {
      name = "github-actions"
    }
  }
}

resource "random_pet" "example" {
  length    = "15"
}

output "name" {
  value = random_pet.example.id
}
