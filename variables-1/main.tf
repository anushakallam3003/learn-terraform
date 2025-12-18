variable "env" {
  type  	= string
  default 	= "abc"
}

output "env" {
  value = var.env
}

output "enva" {
  value = "${var.env}01"
}


variable "instance_count" {
  type  	= number
  default 	= 100
}


variable "enabled" {
  type 	= bool
  default	= true
}


variable "availability_zones" {
  type 	= list
  default  	= [ "val1", "val2", "val3" ]
}

output "availability_zones" {
  value = var.availability_zones[0]
}

variable "image_ids" {
  type 	= map
  default 	= {
    a = 100,
    b = "xyz"
  }
}

output "image_ids" {
  value = var.image_ids["a"]
}

variable "input_value1" {
  type = number
}

variable "input_value2" {}