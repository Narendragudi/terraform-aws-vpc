### Aws Vpc Module

this module creates following resources, we are using high availability (HA), we are getting first 2 az automatically.

* VPC
* Internet gateway with VPC association
* 2 Public subnets in 1a and 1b
* 2 Private subnets in 1a and 1b
* 2 Database subnets in 1a and 1b
* Elastic ip
* NAT gateway in 1a public subnet
* Public route table
* Private route table
* Database route table
* subnets and route tables association
* VPC peering if user request
* Adding peering route in default VPC, if user don't provider accecptor VPC explicity
* Adding peeering route in public, private and database route tables


### INPUTS

* project_name (required) - your project name
* Environment (required) - which environment you are working
* vpc_cidr (optional) - default value is 10.0.0.0/16, user can override
* enable_dns_hostname (optional) - default value is true
* commom_tags (optional) - better to provide
* vpc_tags (optional) - default value is empty. type is map
* igw_tags (optional) - default value is empty. type is map
* public_subnet_cidr (required) - user must provide 2 valid public subnets CIDR
* public_subnet_tags (optional) - default value is empty. type is map
* private_subnet_cidr (required) - user must provide 2 valid public subnets CIDR
* private_subnet_tags (optional) - default value is empty. type is map
* database_subnet_cidr (required) - user must provide 2 valid public subnets CIDR
* database_subnet_tags (optional) -  default value is empty. type is map
* nat_gateway_tags (optional) - default value is empty. type is map
* public_route_table_tags (optional) - default value is empty. type is map
* private_route_table_tags (optional) - default value is empty. type is map
* database_route_table_tags (optional) - default value is empty. type is map
* is_peering_required (optional) - default value is false
* accepter_vpc_id (optional) - default value is default vpc id
* vpc_peering_tags (optional) - default value is empty. type is map


### OUTPUTS

* VPC_id - VPC id created
* public_subnet_ids - 2 public subnet ids created
* private_subnet_ids - 2 private subnet ids created
* database_subnet_ids - 2 database subnet ids created