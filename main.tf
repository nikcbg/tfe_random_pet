resource "random_pets" "example" {
  length    = "6"
}

output "name" {
  value = "${random_pet.example.id}"
}
