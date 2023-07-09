tags = {
  project     = "Appslion Assignment"
  environment = "dev"
  terraform   = "true"
  region      = "us-east-1"
  repo        = "https://github.com/elsie-dev/Appslion.git"
}

subnet_id        = ["10.0.101.0/24", "10.0.102.0/24"]
security_group   = "ec2-sg"
instance_type    = "t2.micro"
key_name         = "popo"
ami              = "i-092e94a912388140d"
my_vpc           = "appslion-vpc"
my_internet_gateway = "appslion-ig"
nat_gateway_route = "0.0.0.0/0"
subnets_cidr   =["10.0.1.0/24" , "10.0.2.0/24"]