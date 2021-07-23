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


variable "sample2" {}

output "sample2" {
  value = var.sample2
}

variable "string" {
  default = "Hello"
}

variable "number" {
  default = 10
}

variable "boolean" {
  default = false
}

output "data-types" {
  value = "String = ${var.string} , Number = ${var.number} , Boolean = ${var.boolean}"
}

variable "TRAINING" {
  default = "DevOps"
}

variable "TRAININGS" {
  default = [ "DevOps", "AWS" ]
}

variable "TRAINING-DETAILS" {
  default = {
    AWS = "6AM EST"
    DEVOPS = "8AM EST"
  }
}

output "TRAINING" {
  value = var.TRAINING
}

output "FIRST-TRAINING" {
  value = var.TRAININGS[0]
}

output "SECOND-TRAINING" {
  value = var.TRAININGS[1]
}

output "TRAINING-DETAILS" {
  value = "AWS TIMING - ${var.TRAINING-DETAILS["AWS"]}"
}
