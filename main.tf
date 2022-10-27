resource "random_pet" "example" {
  length    = "3"
}

output "name" {
  value = random_pet.example.id
}
