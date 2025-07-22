resource "aws_instance" "strapi_instance" {
  ami                    = "ami-0d1b5a8c13042c939"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet[0].id
  vpc_security_group_ids = [aws_security_group.strapi_sg.id]
  key_name               = var.key_name


  user_data = templatefile("user_data.sh", {
    region      = "us-east-2"
    db_name            = var.db_name
    db_username        = var.db_username
    db_password        = var.db_password
    APP_KEYS          = var.APP_KEYS
    API_TOKEN_SALT    = var.API_TOKEN_SALT
    ADMIN_JWT_SECRET  = var.ADMIN_JWT_SECRET

  })

  tags = {
    Name = "Strapi-Server-Govind"
  }
}
 