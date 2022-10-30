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