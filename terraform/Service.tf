resource "port-labs_blueprint" "Service" {
  title      = "Service"
  icon       = "Microservice"
  description = "This blueprint represents a k8s Service"
  identifier = "Service"
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
    identifier = "type"
    title = "Service Type"
    type = "string"
    description = "Service type"
  }
  properties {
    identifier = "selectors"
    title = "Selectors"
    type = "object"
    description = "Pod selectors for the service"
  }
  relations {
    identifier = "Namespace"
    title = "Namespace"
    target = port-labs_blueprint.Namespace.id
    required = true
    many = false
  }
}