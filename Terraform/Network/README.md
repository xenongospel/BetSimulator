Networking Terraform Stack

Creates a VPC with:
  - 6 Subnets (2 Subnets per Availability Zone)
    - 3 Publically Available Subnets
    - 3 Privatelly Available Subnets
    - 1 Internet Gateway (For providing internet access to instances within the public subnets)
    - 1 Nat Gateway (Enables traffic within private subnet to be routed to the internet without instance being public facing)
    - 6 Route Tables (and associations to the related subnets)
    - 1 Elastic IP (1/5) for the NAT Gateway Component

This module can be used for architecture that will need to exist inside a VPC
For example:
  - EC2 Instances
  - RDS Clusters
  - Gateways and Interfaces
  - etc...
