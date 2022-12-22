resource "port-labs_blueprint" "Role" {
  title      = "Role"
  icon       = "Microservice"
  description = "This blueprint represents a k8s Role"
  identifier = "Role"
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
    identifier = "Namespace"
    title = "Namespace"
    target = port-labs_blueprint.Namespace.id
    required = true
    many = false
  }
}