variable "sample" {
  default = 10
}

output "sample" {
  value = var.sample
}

# String Data type
variable "sample1" {
  default = "Hello World"
}

# Number Data type
variable "sample2" {
  default = 100
}

# Boolean data type
variable "sample3" {
  default = true
}

# Default variable type
variable "sample4" {
  default = 100
}

output "sample4" {
  value = var.sample4
}

# List variable type
variable "sample5" {
  default = [
    100,
    "abc",
    "xyz"
  ]
}

output "sample5" {
  value = var.sample5[1]
}

# Map variable type
variable "sample6" {
  default = {
    number = 100
    string = "xyz"
    boolean = false
  }
}

output "sample6" {
  value = var.sample6["number"]
}

# Variables from tfvars
variable "" {}