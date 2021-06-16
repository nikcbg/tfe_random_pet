resource "random_pet" "example" {
  length    = "6"
}

output "name" {
  sensitive = true
  value = "${random_pet.example.id}"
}
