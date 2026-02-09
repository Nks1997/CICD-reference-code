terraform {
  required_version = "> 1.0"
}

resource "null_resource" "provisioner_demo" {

  # 1️⃣ local-exec (runs on your local machine)
  provisioner "local-exec" {
    command = "echo 'Local exec: resource created'"
  }

  # 2️⃣ file provisioner (copy local → remote)
  provisioner "file" {
    source      = "demo.txt"
    destination = "/tmp/demo.txt"

    connection {
      type     = "ssh"
      user     = "testuser"
      password = "testpassword"
      host     = "1.2.3.4"
    }
  }

  # 3️⃣ remote-exec (runs inside remote VM)
  provisioner "remote-exec" {
    inline = [
      "echo 'Remote exec running'",
      "cat /tmp/demo.txt"
    ]

    connection {
      type     = "ssh"
      user     = "testuser"
      password = "testpassword"
      host     = "1.2.3.4"
    }
  }

  # 4️⃣ destroy-time provisioner
  provisioner "local-exec" {
    when    = destroy
    command = "echo 'Resource destroyed'"
  }
}
