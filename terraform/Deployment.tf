resource "port-labs_blueprint" "Deployment" {
  title      = "Deployment"
  icon       = "Deployment"
  description = "This blueprint represents a k8s Deployment"
  identifier = "Deployment"
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
    identifier = "replicas"
    title = "Replicas"
    type = "number"
    description = "Replica count"
  }
  properties {
    identifier = "availableReplicas"
    title = "Available Replicas"
    type = "number"
    description = "Available replica count"
  }
  properties {
    identifier = "containers"
    title = "Containers"
    type = "array"
    description = "The containers for each pod instance of the deployment"
  }
  properties {
    identifier = "strategy"
    title = "Strategy"
    type = "string"
    description = "Rollout Strategy"
  }
  relations {
    identifier = "Namespace"
    title = "Namespace"
    target = port-labs_blueprint.Namespace.id
    required = true
    many = false
  }
}