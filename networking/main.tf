resource "null_resource" "hello_ghost" {
  provisioner "local-exec" {
    command = "echo \"Hello Ghost!\""
  }
}
