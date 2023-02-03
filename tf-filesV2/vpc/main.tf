resource "aws_vpc" "quest_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Quest VPC"
  }
}

# Hardcoding the public subnet for our deployment
resource "aws_subnet" "quest_public_subnet" {
  vpc_id            = aws_vpc.quest_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Quest Public Subnet"
  }
}

# Hardcoding a second public subnet for ELB redundancy later on
resource "aws_subnet" "quest_public_subnet_2" {
  vpc_id            = aws_vpc.quest_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1e"

  tags = {
    Name = "Quest Public Subnet2"
  }
}


# Hardcoding private subnet for our  deployment
resource "aws_subnet" "quest_private_subnet" {
  vpc_id            = aws_vpc.quest_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Quest Private Subnet"
  }
}

# Hardcoding internet gateway
resource "aws_internet_gateway" "quest_ig" {
  vpc_id = aws_vpc.quest_vpc.id

  tags = {
    Name = "Quest App Internet Gateway"
  }
}

# Route table for my public subnet
resource "aws_route_table" "quest_public_rt" {
  vpc_id = aws_vpc.quest_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.quest_ig.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.quest_ig.id
  }

  tags = {
    Name = "Quest Public Route Table"
  }
}

#associating route table
resource "aws_route_table_association" "quest_public_rt_a" {
  subnet_id      = aws_subnet.quest_public_subnet.id
  route_table_id = aws_route_table.quest_public_rt.id
}

#Creating Security Group for quest
resource "aws_security_group" "quest_sg" {
  name   = "HTTP, SSH, and Quest_Port"
  vpc_id = aws_vpc.quest_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}


