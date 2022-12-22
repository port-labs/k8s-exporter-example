resource "port-labs_blueprint" "Namespace" {
  title      = "Namespace"
  icon       = "Microservice"
  description = "This blueprint represents a k8s Namespace"
  identifier = "Namespace"
  properties {
    identifier = "creationTimestamp"
    type       = "string"
    format     = "date-time"
    description = "When the Namespace was created"
    title      = "Created"
  }
  properties {
    identifier = "labels"
    type       = "object"
    title      = "Labels"
    description = "Labels of the Namespace"
  }
  relations {
    identifier = "Cluster"
    title = "Cluster"
    target = port-labs_blueprint.Cluster.id
    required = true
    many = false
  }
}