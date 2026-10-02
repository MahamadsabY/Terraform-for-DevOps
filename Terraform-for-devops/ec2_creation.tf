# Key pair (Login)
resource "aws_key_pair" "my-key-pair" {
    key_name = "${var.env}-terra-key-ec2"
    public_key = file("terra-key-ec2.pub")
    tags = {
      Environment = var.env
    }
}


# VPC and Security gorup, Volumes, andd other essentials
resource "aws_default_vpc" "default" {

  
}

resource "aws_security_group" "my-sg" {
    name = "${var.env}-automate-sg"
    description = "this will add a TF generated security group"
    vpc_id = aws_default_vpc.default.id  # Interpolation

    #inbound rules
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "SSH open"
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "HTTP open"
    }

    ingress {
        from_port = 8000
        to_port = 8000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        description = "flask app"
    }

    # Out bound rules
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = "all access open outbound"
    }

    tags = {
        Name = "${var.env}-automate-sg"
        Environment = var.env
    }
  
}



# Create a ec2 intsance using terraform

resource "aws_instance" "my_instance" {
   # count = 2 # meta arguement --> This indicates how many instance you need 
    for_each = tomap({
        my-ec2-instance1 = "t3.micro"
        
    })  # This is also meta armnt
    depends_on = [ aws_security_group.my-sg, aws_key_pair.my-key-pair ]  # This means without this infrastructure not build i.e why its dependson
    key_name = aws_key_pair.my-key-pair.key_name  # interpolation
    security_groups = [aws_security_group.my-sg.name]
    instance_type = var.ec2_instance_type   # Taking variable form variables.tf file
    ami = var.ec2_ami_id  # Taking variable form variables.tf file
    user_data = file("install_nginx.sh")

    root_block_device {
      # volume_size = var.ec2_root_storage_size   # Taking variable form variables.tf file
      volume_size = var.env == "prd" ? 20 : var.ec2_default_root_storage_size  # This is conditional like if this , this happens
      volume_type = "gp3"
    }
    tags = {
      Name = each.key
      Environment = var.env
    }  
}