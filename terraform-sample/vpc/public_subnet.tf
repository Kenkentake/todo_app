resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.0.0/20"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "sample"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "sample"
  }
}

