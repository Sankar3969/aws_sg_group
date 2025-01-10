resource "aws_security_group" "main" {
  name        = "${var.project}-${var.sg_type}"
  description = var.description
  vpc_id      = var.vpc_id
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
       Name = "${var.project}-${var.Environment}-${var.sg_type}" 
    }
  )
}

locals {
  sg_id = aws_security_group.main.id
}
