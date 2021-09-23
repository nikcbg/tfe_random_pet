resource "random_pet" "example" {
  length    = "10"
}

output "name" {
  value = random_pet.example.id
}
