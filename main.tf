locals {
  ubuntu_ami_id = "ami-0c7217cdde317cfec" # ID de exemplo do Ubuntu 22.04 na us-east-1
}

# Security Group liberando HTTP (80) e SSH (22)
resource "aws_security_group" "web_sg" {
  name        = "${var.project_name}-sg"
  description = "Security Group para permissao de acesso HTTP e SSH"

  ingress {
    description = "Acesso HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Acesso SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-sg"
  }
}

# Instância EC2 com Cloud-Init
resource "aws_instance" "web_server" {
  ami           = local.ubuntu_ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  # Entrega do arquivo user-data.yaml para a instancia
  user_data = file("${path.module}/user-data.yaml")

  tags = {
    Name = "${var.project_name}-vm"
  }
}