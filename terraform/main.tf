terraform {
  required_providers {
    port-labs = {
      source  = "port-labs/port-labs"
      version = "~> 0.5.0"
    }
  }
}

provider "port-labs" {
  client_id = "n8aR4zbmKBLRhYh8ZiKa42XQeLNp5ehJ"
  secret = "FhjWVTsq5j7qjgshUtdtAiklIJQqQRDCdNnuD0SBIQRfD4irgndisaEVrOc0r65S"
}
