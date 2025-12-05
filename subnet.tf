resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/19"
  availability_zone = var.az1

  tags = {
    Name = "${local.env}-private-${var.az1}"
}
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.32.0/19"
  availability_zone = var.az2

  tags = {
    Name = "${local.env}-private-${var.az2}"
}
}

resource "aws_subnet" "private3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.64.0/19"
  availability_zone = var.az3

  tags = {
    Name = "${local.env}-private-${var.az3}"
}
}

resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.96.0/19"
  availability_zone = var.az1

  tags = {
    Name = "${local.env}-public-${var.az1}"
}
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.128.0/19"
  availability_zone = var.az2

  tags = {
    Name = "${local.env}-public-${var.az2}"
}
}

resource "aws_subnet" "public3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.160.0/19"
  availability_zone = var.az3

  tags = {
    Name = "${local.env}-public-${var.az3}"
}
}