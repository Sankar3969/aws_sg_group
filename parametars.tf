resource "aws_ssm_parameter" "security_grp" {
  name        = "/${var.project}/${var.Environment}/${var.sg_type}-sg"
  type        = "String"
  value       = local.sg_id
  tags = {
    environment = "Expense-dev"
  }
  overwrite =true
}