# functions are inbuilt in terraform and we cannot create the functions as a user of terraform.

# programming functionalities like:
#  upper case
#  cut a string
#  add some number

#functions can be used with modules and arguments with resources

variable "list" {
  default = [1, 2, 3]
}

output "list_length" {
  value = length(var.list)
}

variable "map" {
  default = {
    a = 1
    b = 2
    c = 3
    d = 4
  }
}

output "list_map" {
  value = length(var.map)
}