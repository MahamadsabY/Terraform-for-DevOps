resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "mammu-table-9212"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "mammu-table-9212"
  }
}
