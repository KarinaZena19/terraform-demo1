# Bloque de proveedor
#
# Se configura AWS como proveedor usando un Access Key ID y su respectivo
# Secret Key provisto en clase. Ademas, se especifica la region donde se
# debe crear los recursos
# La lista de regiones disponibles por cada servicio de AWS esta en
# https://docs.aws.amazon.com/es_es/general/latest/gr/rande.html
provider "aws" {
  access_key = "AKIAJSBAI7EAIXVP3R5Q"
  secret_key = "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"
  region = "us-east-1"
}

# Bloque de instancia EC2 (maquina virtual) usando el recurso de tipo
# "aws_instance" y nombre interno "vm-prueba01" (valido solo para Terraform,
# mas no para AWS)
#
# Se crea una instancia chica con Amazon Linux como sistema operativo
# Amazon Linux
resource "aws_instance" "vm-prueba01" {
  # AMI de Amazon Linux 2 AMI (HVM), SSD Volume Type en N. Virginia
  ami = "ami-035be7bafff33b6b6"

  # Tamanio de instancia
  # Ver tamanios disponibles en https://aws.amazon.com/es/ec2/instance-types/
  instance_type = "t2.nano"
  tags {
  Name="vm-kzena"
  }
  ##Agrege esta linea de prueba 18/02/2019 5:36pm
  ##Otra modificacion
}
