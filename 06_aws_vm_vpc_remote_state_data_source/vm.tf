resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("../credentials/aws-key.pub")
}

resource "aws_instance" "vm" {
  ami                         = "ami-05fa00d4c63e32376"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    "Name" = "vm-terraform"
  }
}

# ssh-keygen -f aws-key -P '' -t rsa && chmod 0600 aws-key*
