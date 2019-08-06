/*
 XENON #################################################################################################################
       ELASTIC IP
       PARAMETERS:
        - VPC: Condition on whether the Elastic IP is associated to the VPC.
 XENON #################################################################################################################
*/

resource "aws_eip" "nat_gateway_elastic_ip" {
  vpc = true
}
