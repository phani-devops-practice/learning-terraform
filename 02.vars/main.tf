variable "a" {
  default = 100
}

output "a" {
  value = var.a
}

output "x" {
  value = "Values of a=${var.a}"
}

output "values" {
  value = "Values, a=${var.a}, b=${var.b}, c=${var.c}, d=${var.d}"
}

variable "b" {}

variable "c" {}
# -var c=400

variable "d" {}
# TF_VAR_d=500
