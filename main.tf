resource "null_resource" "local-exec" {
  provisioner "safe-local-exec" {
    command = "sleep 2"
  }
}
# resource "null_resource" "local-exec1" {
#   provisioner "local-exec" {
#     command = "sleep 5"
#   }
# }
# resource "null_resource" "local-exec2" {
#   provisioner "local-exec" {
#     command = "sleep 10"
#   }
# }
# resource "null_resource" "local-exe3" {
#   provisioner "local-exec" {
#     command = "sleep 15"
#   }
# }
# resource "null_resource" "local-exe4" {
#   provisioner "local-exec" {
#     command = "sleep 40"
#   }
# }
resource "null_resource" "sleep" {
  triggers = {
    uuid = uuid()
  }

  provisioner "safe-local-exec" {
    command = "sleep ${var.sleepy_time}"
  }
}
