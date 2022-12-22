resource "port-labs_blueprint" "ClusterRole" {
  title      = "Cluster Role"
  icon       = "Microservice"
  description = "This blueprint represents a k8s ClusterRole"
  identifier = "ClusterRole"
  properties {
    identifier = "creationTimestamp"
    type       = "string"
    format     = "date-time"
    description = "When the PodOwner was created"
    title      = "Created"
  }
  properties {
    identifier = "labels"
    type       = "object"
    title      = "Labels"
    description = "Labels of the PodOwner"
  }
  properties {
    identifier = "rules"
    title = "Rules"
    type = "array"
    description = "Role Rules"
  }
  relations {
    identifier = "Cluster"
    title = "Cluster"
    target = port-labs_blueprint.Cluster.id
    required = true
    many = false
  }
}