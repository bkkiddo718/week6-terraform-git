resource "aws_lightsail_instance" "custom" {
  name              = "kwame-server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform   what time we getting cuban food and what time? also i wont go to work if you dont </h1>' | sudo tee /var/www/html/index.html"
}


