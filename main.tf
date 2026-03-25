provider "null" {}

resource "null_resource" "deploy_function" {
  provisioner "local-exec" {
    command = "faas-cli up -f stack.yaml"
  }
}

resource "null_resource" "destroy_function" {
  provisioner "local-exec" {
    when    = destroy
    command = "faas-cli remove hello-fn"
  }
}
