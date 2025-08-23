resource "aws_instance" "ec2_instance" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = [aws_security_group.ec2_security_group.id]
  iam_instance_profile        = aws_iam_instance_profile.ec2_instance_profile.name

  tags = {
    Name = var.ec2_name
  }

  # Installing Docker, SSM agent and AWS CLI
  user_data = <<EOF
#!/bin/bash
apt update
curl -fsSL https://get.docker.com | sh
systemctl enable docker
systemctl start docker
apt install snapd -y
snap install amazon-ssm-agent --classic
snap start amazon-ssm-agent
snap install aws-cli --classic
mkdir -p /app
touch /app/docker-compose.yml
EOF
}

resource "aws_security_group" "ec2_security_group" {
  name        = "private-ec2-security-group"
  description = "Security group for the private EC2 instance"
  vpc_id      = var.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}