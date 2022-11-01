resource "random_pet" "example" {
  length    = "5"
}

output "name" {
  value = random_pet.example.id
}
