resource "aws_instance" "applications_layer" {
    ami           = "ami-0c94855ba95c71c99"
    instance_type = "t3.medium"
    vpc_security_group_ids = [var.security_group]
    
    tags = {
        Name = "applications_layer"
    }
}

resource "aws_instance" "elk_layer" {
    ami           = "ami-03cd80cfebcbb4481"
    instance_type = "t3.xlarge"
    key_name      = var.pem_key
    vpc_security_group_ids = [var.security_group]
    
    tags = {
        Name = "elk_layer"
    }
}