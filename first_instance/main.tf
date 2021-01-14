resource "google_compute_instance" "test" {
    name = "test-terraform"
    machine_type = "e2-medium"
    zone = "asia-east2-b"

    tags = [ "foo", "bar" ]

    boot_disk {
      initialize_params {
          image = "debian-cloud/debian-9"
      }
    }
  

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}