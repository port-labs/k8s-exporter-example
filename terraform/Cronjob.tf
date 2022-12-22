resource "port-labs_blueprint" "CronJob" {
  title      = "CronJob"
  icon       = "Microservice"
  description = "This blueprint represents a k8s CronJob"
  identifier = "CronJob"
  properties {
    identifier = "creationTimestamp"
    type       = "string"
    format     = "date-time"
    description = "When the CronJob was created"
    title      = "Created"
  }
  properties {
    identifier = "labels"
    type       = "object"
    title      = "Labels"
    description = "Labels of the CronJob"
  }
  properties {
    identifier = "schedule"
    type       = "string"
    description = "Cron schedule for the job"
    title      = "Job Schedule"
  }
  properties {
    identifier = "lastSuccessfulRun"
    title = "Last Successful run"
    type = "string"
    format = "date-time"
    description = "The CronJob's last successful run"
  }
  properties {
    identifier = "lastRun"
    title = "Last run"
    type = "string"
    format = "date-time"
    description = "The CronJob's last run"
  }
  properties {
    identifier = "suspended"
    type       = "string"
    title      = "Suspended"
    description = "Is the CronJob suspended"
  }
  relations {
    identifier   = "Namespace"
    title        = "Namespace"
    required     = true
    many         = false
    target       = port-labs_blueprint.Namespace.id
  }
}