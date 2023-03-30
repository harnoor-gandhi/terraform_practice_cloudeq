resource "local_file" "file-block" {
  filename = "hello.txt"
  content  = "${random_id.random_value.hex}"
}

resource "local_file" "file-block1" {
  filename = "helo1.txt"
  content  = local.con
}

locals {
  con = "Hello world"
}

resource "random_id" "random_value" {
  byte_length = 8
}