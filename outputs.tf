output "instance_public_ip" {
  description = "IP público da instância EC2"
  value       = aws_instance.web_server.public_ip
}

output "instance_id" {
  description = "ID da instância criada"
  value       = aws_instance.web_server.id
}