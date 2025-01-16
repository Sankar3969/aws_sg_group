resource "aws_ssm_parameter" "security_grp" {
  name        = "/${var.project}/${var.Environment}/${var.sg_type}-sg"
  type        = "String"
  value       = local.sg_id
  tags = {
    environment = "roboshop-dev"
  }
  overwrite =true
}