resource "port-labs_blueprint" "Node" {
  title      = "Node"
  icon       = "Microservice"
  description = "This blueprint represents a k8s Node"
  identifier = "Node"
  properties {
    identifier = "creationTimestamp"
    type       = "string"
    format     = "date-time"
    description = "When the Node was created"
    title      = "Created"
  }
  properties {
    identifier = "labels"
    type       = "object"
    title      = "Labels"
    description = "Labels of the Node"
  }
  properties {
    identifier = "availableCpu"
    type       = "string"
    title      = "Available Cpu"
    description = "Available Cpu"
  }
  properties {
    identifier = "availableMemory"
    type       = "string"
    title      = "Available Memory"
    description = "Available Memory"
  }
  properties {
    identifier = "ready"
    type = "string"
    title = "Node Readiness"
    description = "Node ready status"
    enum = [
        "True",
        "False"
    ]
    enum_colors = {
      "True" = "green",
      "False" = "red"
    }
  }
  relations {
    identifier = "Cluster"
    title = "Cluster"
    target = port-labs_blueprint.Cluster.id
    required = true
    many = false
  }
}