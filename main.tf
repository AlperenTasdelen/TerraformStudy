provider "aws" {
  region = var.aws_region
}

# Possible values for aws_region are:
# us-east-1
# us-west-1
# us-west-2
# eu-west-1
# eu-central-1

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
}