variable "region-name" {
  default = "ap-south-1"
}

variable "instance_name" {
 default =  "t3.micro"
}

variable "image" {
  default = "ami-051a31ab2f4d498f5"
}

variable "sg" {
  default = ["sg-0002f6ecceaad3bdc"]
}

variable "key-pair" {
  default = "mumbai-key"
}
