//lab1
module "lessons_table" {
  source = "../modules/dynamodb"

  table_name = "Lessons"
  context    = module.naming.context
}

module "instruction_table" {
  source = "../modules/dynamodb"

  table_name = "Instruction"
  context    = module.naming.context
}

module "lambda" {
  source = "../modules/lambda-functions"

  function_name = module.naming.id
  handler       = "index.handler"
  lambda_zip    = "../lambda.zip"
  context       = module.naming.context
}