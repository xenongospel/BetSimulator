/*
 XENON #################################################################################################################
       SECURITY GROUPS
       PARAMETERS:
        - CIDR Block: Range of addresses that the VPC will occupy within Amazon's Private Cloud.
        - Instance Tenancy: Determines whether the VPC will reside in a dedicated sector of the Cloud or whether it will share tenancy with other VPCs.
        - Enable DNS Support: Determines whether a VPC will provide support for DNS resolutions.
        - Enable DNS Hostnames: Determines whether public IPs assigned to resources in a VPC will have public DNS hostnames.
        - Assign Generated IPv6 CIDR Block: Associates an IPv6 address to the VPC.
 XENON #################################################################################################################
*/

/*
 XENON #################################################################################################################
       CORE SECURITY GROUPS
 XENON #################################################################################################################
*/

resource "aws_security_group" "allow-inbound-to-all-services" {
  name                = "allow-inbound-to-all-services"
  description         = "INBOUND SG - Allows external user to access ssh based instances from the public internet."
  vpc_id              = var.VPC_ID
  name_prefix         = var.SG_NAME_PREFIX

  ingress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
    description       = "Allows all inbound traffic from the public internet to be accepted by all services."
  }
}

resource "aws_security_group" "allow-outbound-to-all-services" {
  name                = "allow-outbound-to-all-services"
  description         = "INBOUND SG - Allows external user to access ssh based instances from the public internet."
  vpc_id              = var.VPC_ID
  name_prefix         = var.SG_NAME_PREFIX

  egress {
    from_port         = 0
    to_port           = 0
    protocol          = "-1"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
    description       = "Allows all outbound traffic from within the vpc to be accepted by all services."
  }
}

resource "aws_security_group" "allow-external-to-public-ssh" {
  name                = "allow-external-to-public-ssh"
  description         = "INBOUND SG - Allows external user to access ssh based instances from the public internet."
  vpc_id              = var.VPC_ID
  name_prefix         = var.SG_NAME_PREFIX

  ingress {
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
    description       = "INBOUND SG - Allows all external users to access ssh based instances from the public internet."
  }
}

resource "aws_security_group" "allow-external-to-public-mysql" {
  name                = "allow-external-to-public-mysql"
  description         = "INBOUND SG - Allows external user to access mysql rds instances from the public internet."
  vpc_id              = var.VPC_ID
  name_prefix         = var.SG_NAME_PREFIX

  ingress {
    from_port         = 3306
    to_port           = 3306
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
    description       = "INBOUND SG - Allows all external users to access mysql rds instances from the public internet."
  }
}

resource "aws_security_group" "allow-external-to-public-postgres" {
  name                = "allow-external-to-public-postgres"
  description         = "INBOUND SG - Allows external user to access postgres rds instances from the public internet."
  vpc_id              = var.VPC_ID
  name_prefix         = var.SG_NAME_PREFIX

  ingress {
    from_port         = 3306
    to_port           = 3306
    protocol          = "tcp"
    cidr_blocks       = ["0.0.0.0/0"]
    ipv6_cidr_blocks  = ["::/0"]
    description       = "INBOUND SG - Allows all external users to access postgres rds instances from the public internet."
  }
}

