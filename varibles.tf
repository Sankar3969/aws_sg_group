variable Environment {
  type        = string
}
variable project{
    type = string
    default = "Expense"
}
variable sg_type {
  type        = string
 
}
variable description {
  type        = string
}
variable common_tags {
    type = map(string)
    default = {
     project = "Expense"
     Terraform = true
    }
}
variable sg_tags {
}
variable vpc_id {
  type = string
}

