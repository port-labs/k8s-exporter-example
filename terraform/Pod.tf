resource "port-labs_blueprint" "Pod" {
  title      = "Pod"
  icon       = "Microservice"
  description = "This blueprint represents a k8s Pod"
  identifier = "Pod"
  properties {
    identifier = "startTime"
    type       = "string"
    format     = "date-time"
    description = "When the namespace was created"
    title      = "name"
  }
  properties {
    identifier = "labels"
    type       = "object"
    title      = "Labels"
    description = "Labels of the namespace"
  }
  properties {
    identifier = "phase"
    title      = "Pod phase"
    type       = "string"
    description = "Pod running phase"
  }
  properties {
    identifier = "containers"
    title = "Containers"
    type = "array"
    description = "Pod's containers"
  }
  properties {
    identifier = "conditions"
    type = "array"
    title = "Conditions"
    description = "Pod's conditions"
  }
  relations {
    identifier   = "PodOwner"
    title        = "Pod Owner"
    required     = false
    many         = false
    target        = port-labs_blueprint.PodOwner.id
  }
  relations {
    identifier   = "Namespace"
    title        = "Namespace"
    required     = false
    many         = false
    target        = port-labs_blueprint.Namespace.id
  }
  relations {
    identifier   = "Node"
    title        = "Node"
    required     = true
    many         = false
    target       = port-labs_blueprint.Node.id
  }
}