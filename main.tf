provider "aws" {
  region = var.region
}

resource "aws_instance" "my_instance" {
    count = var.instance_count
    ami = var.ami_id
    key_name = var.key 
    instance_type = var.itype

    tags = {

        Name = "${var.iname}-${count.index + 1}"

    }
root_block_device {
  volume_size = 15
  volume_type = "gp2"
}

}
