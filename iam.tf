provider "aws" {
  region = "us-east-1"  # Change to your desired AWS region
}

resource "aws_iam_role" "example_role" {
  name = "example-role"  # Change to your desired role name
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::ACCOUNT_ID:user/USERNAME"  # Replace with the user's ARN
        }
      }
    ]
  })
}

output "role_arn" {
  value = aws_iam_role.example_role.arn
}
