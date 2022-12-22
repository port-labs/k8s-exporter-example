resource "port-labs_blueprint" "PodOwner" {
  title      = "Pod Owner"
  icon       = "Microservice"
  description = "This blueprint represents a k8s Pod Owner"
  identifier = "PodOwner"
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
    title      = "Replicas"
    type       = "number"
    description = "Replica Count"
  }
  properties {
    identifier = "availableReplicas"
    title = "Available Replicas"
    type = "number"
    description = "Available Replica count"
  }
  properties {
    identifier = "type"
    type = "string"
    enum = [ 
          "StatefulSet",
          "DaemonSet",
          "ReplicaSet",
          "Job" 
        ]
    title = "Owner Type"
    description = "Type of Owner"
  }
  properties {
    identifier   = "status"
    title        = "Status"
    type     = "string"
    description = "Incase this is a job, it's status"
  }
  properties {
    identifier   = "startTime"
    title        = "Start Time"
    type     = "string"
    format = "date-time"
    description = "Job start time"
  }
  properties {
    identifier   = "endTime"
    title        = "End Time"
    type     = "string"
    format = "date-time"
    description = "Job end time"
  }
  relations {
    identifier   = "Deployment"
    title        = "Title"
    required     = false
    many         = false
    target       = port-labs_blueprint.Deployment.id
  }
  relations {
    identifier   = "Namespace"
    title        = "Namespace"
    required     = true
    many         = false
    target       = port-labs_blueprint.Namespace.id
  }
  relations {
    identifier   = "CronJob"
    title        = "CronJob"
    required     = false
    many         = false
    target       = port-labs_blueprint.CronJob.id
  }
}