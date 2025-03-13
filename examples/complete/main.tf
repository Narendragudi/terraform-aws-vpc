module "roboshop" {
   # source = "../terraform-aws-vpc"
    source = "git::https://github.com/Narendragudi/terraform-aws-vpc.git?ref=main"
    Project_name = var.Project_name
    Environment = var.Environment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    
    # public subnet
    public_subnets_cidr = var.public_subnets_cidr

    # private subnet
    private_subnets_cidr = var.private_subnets_cidr

    # database subnet
    database_subnets_cidr = var.database_subnets_cidr

    # peering
    is_peering_required = var.is_peering_required

}