resource "random_pet" "example" {
  length    = "2"
}

output "name" {
  value = random_pet.example.id
}
