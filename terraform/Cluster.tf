resource "port-labs_blueprint" "Cluster" {
  title      = "Cluster"
  icon       = "Cluster"
  identifier = "Cluster"
  properties {
    identifier = "clusterName"
    type       = "string"
    title      = "Cluster Name"
    required   = true
  }
}