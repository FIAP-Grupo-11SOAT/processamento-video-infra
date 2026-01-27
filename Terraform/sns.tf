resource "aws_sns_topic" "sns_email" {
  name = "sns_email"
  tags = {
    Project = "hackaton-11soat"
  }
  }
