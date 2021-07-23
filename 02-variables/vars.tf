variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = "${var.sample} - From Terraform"
}

// Variable if it is combined with some other string then we have to use ${} interpolation for variable accessing


