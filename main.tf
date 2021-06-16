resource "random_pets" "example" {
  length    = "6"
}

output "name" {
  sensitive = true
  value = "${random_pet.example.id}"
}
