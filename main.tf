resource "aws_instance" "elk_layer" {
    ami           = "ami-080e1f13689e07408"
    instance_type = "t3.medium"
    vpc_security_group_ids = [var.security_group]
    key_name      = var.pem_key

    user_data = <<-EOF
                #!/bin/bash
                # Import the Elasticsearch public GPG key into APT
                wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
                
                # Add the Elasticsearch repository
                sudo add-apt-repository "deb https://artifacts.elastic.co/packages/7.x/apt stable main"
                
                # Update the APT package index
                sudo apt update
                EOF

    tags = {
        Name = "elk_layer"
    }
}


resource "aws_instance" "applications_layer" {
    ami           = "ami-03cd80cfebcbb4481"
    instance_type = "t3.xlarge"
    vpc_security_group_ids = [var.security_group]
    
    tags = {
        Name = "applications_layer"
    }
}