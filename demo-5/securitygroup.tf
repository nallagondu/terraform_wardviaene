data "aws_ip_ranges" "us_east_ec2" {
  regions  = ["us-east-1", "us-east-2"]
  services = ["ec2"]
}

resource "aws_security_group" "from_us_east" {
  name = "from_us_east"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = slice(data.aws_ip_ranges.us_east_ec2.cidr_blocks, 0, 50)
  }
  tags = {
    CreateDate = data.aws_ip_ranges.us_east_ec2.create_date
    SyncToken  = data.aws_ip_ranges.us_east_ec2.sync_token
  }
}

