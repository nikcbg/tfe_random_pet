resource "random_pet" "example" {
  length    = "1"
}

output "name" {
  value = random_pet.example.id
}
