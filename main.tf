provider "aws" {
  region = var.region
  access_key= "AKIA6ODVAVJZBM2QFEP5"
  secret_key= "KSYOurMKRmUr3llUtjqUFM7VQj70VZsciYBB156k"
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
