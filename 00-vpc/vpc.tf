module "vpc" {
    # source = "../terraform-aws-vpc"
    source = "git::https://github.com/AlgotSarika/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    vpc_cidr = var.vpc_cidr
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    public_subnet_cidirs = var.public_subnet_cidirs
    private_subnet_cidirs = var.private_subnet_cidirs
    database_subnet_cidirs = var.database_subnet_cidirs
    is_peering_required = true
}

#This can be included in the module
resource "aws_db_subnet_group" "expense" {
  name       = "${var.project_name}-${var.environment}"
  subnet_ids =  module.vpc.database_subnet_ids

  tags =merge(
    var.common_tags,
    {
       Name = "${var.project_name}-${var.environment}"
    }
  )
  
}