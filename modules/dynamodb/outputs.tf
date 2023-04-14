output "table_name" {
  description = "Name table"
  value       = aws_dynamodb_table.db.id
}

output "table_arn" {
  description = "ARN table"
  value       = aws_dynamodb_table.db.arn
}