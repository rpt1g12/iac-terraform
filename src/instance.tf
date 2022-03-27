# Use Local SSH key
resource "aws_key_pair" "mac-rpereztorro" {
  key_name   = "mac-rpereztorro"
  public_key = file((var.PATH_TO_PUBLIC_KEY))
}

resource "aws_instance" "example" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  key_name = aws_key_pair.mac-rpereztorro.key_name

  # Upload Script to Install and Run NGINX
  provisioner "file" {
    source      = "installNginx.sh"
    destination = "/tmp/installNginx.sh"
  }

  # Execute Script
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/installNginx.sh",
      "sudo /tmp/installNginx.sh"
    ]
  }

  # Save private IP in local file
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> privateIPs.txt"
  }

  # Set up SSH connection
  connection {
    user        = lookup(var.INSTANCE_USERS, "ubuntu")
    private_key = file(var.PATH_TO_PRIVATE_KEY)
    host        = self.public_ip
  }
}

