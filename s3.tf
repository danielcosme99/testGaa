resource "aws_instance" "ec2_instance" {
  ami           = "ami-079db87dc4c10ac91"  # AMI de Linux
  instance_type = "t2.micro"               # Tipo de instancia

  vpc_security_group_ids = ["sg-0c4124408256d1902"]  # Grupo de seguridad
  subnet_id              = "subnet-c07dc29f"          # Subred

  iam_instance_profile = "SSM_Instance_Profile"  # Reemplaza con el nombre de tu IAM role

  tags = {
    Name = "temp-jroman1"
  }
}







