# variable "alert_conditions" {
#     type =any
# }

variable "alert_conditions" {
  description = "Map of alert conditions to create"
  type        = map(object({
    account_id                     = number
    type                           = string
    name                           = string
    description                    = string
    runbook_url                    = string
    enabled                        = bool
    violation_time_limit_seconds   = number
    fill_option                    = string
    fill_value                     = number
    aggregation_window             = number
    aggregation_method             = string
    aggregation_delay              = number
    expiration_duration            = number
    open_violation_on_expiration   = bool
    close_violations_on_expiration = bool
    slide_by                       = number
    nrql                           = object({
      query = string
    })
    critical                       = object({
      operator              = string
      threshold             = number
      threshold_duration    = number
      threshold_occurrences = string
    })
    warning                        = object({
      operator              = string
      threshold             = number
      threshold_duration    = number
      threshold_occurrences = string
    })
  }))
  default = {
    example_condition1 = {
      account_id                     = 4045645
      type                           = "static"
      name                           = "Condition 1"
      description                    = "Alert when transactions are taking too long"
      runbook_url                    = "https://www.example.com"
      enabled                        = true
      violation_time_limit_seconds   = 3600
      fill_option                    = "static"
      fill_value                     = 1.0
      aggregation_window             = 60
      aggregation_method             = "event_flow"
      aggregation_delay              = 120
      expiration_duration            = 120
      open_violation_on_expiration   = true
      close_violations_on_expiration = true
      slide_by                       = 30
      nrql = {
        query = "SELECT average(duration) FROM Transaction where appName = 'Your App'"
      }
      critical = {
        operator              = "above"
        threshold             = 5.5
        threshold_duration    = 300
        threshold_occurrences = "ALL"
      }
      warning = {
        operator              = "above"
        threshold             = 3.5
        threshold_duration    = 600
        threshold_occurrences = "ALL"
      }
    },
    example_condition2 = {
      account_id                     = 4045645
      type                           = "static"
      name                           = "Condition 2"
      description                    = "Another alert condition"
      runbook_url                    = "https://www.example.com"
      enabled                        = true
      violation_time_limit_seconds   = 3600
      fill_option                    = "static"
      fill_value                     = 1.0
      aggregation_window             = 60
      aggregation_method             = "event_flow"
      aggregation_delay              = 120
      expiration_duration            = 120
      open_violation_on_expiration   = true
      close_violations_on_expiration = true
      slide_by                       = 30
      nrql = {
        query = "SELECT average(responseTime) FROM Transaction where appName = 'Your App'"
      }
      critical = {
        operator              = "above"
        threshold             = 4.0
        threshold_duration    = 300
        threshold_occurrences = "AT_LEAST_ONCE"
      }
      warning = {
        operator              = "above"
        threshold             = 2.0
        threshold_duration    = 600
        threshold_occurrences = "AT_LEAST_ONCE"
      }
    },
    example_condition3 = {
      account_id                     = 4045645
      type                           = "static"
      name                           = "Condition 3"
      description                    = "Another alert condition"
      runbook_url                    = "https://www.example.com"
      enabled                        = true
      violation_time_limit_seconds   = 3600
      fill_option                    = "static"
      fill_value                     = 1.0
      aggregation_window             = 60
      aggregation_method             = "event_flow"
      aggregation_delay              = 120
      expiration_duration            = 120
      open_violation_on_expiration   = true
      close_violations_on_expiration = true
      slide_by                       = 30
      nrql = {
        query = "SELECT average(responseTime) FROM Transaction where appName = 'Your App'"
      }
      critical = {
        operator              = "above"
        threshold             = 4.0
        threshold_duration    = 300
        threshold_occurrences = "AT_LEAST_ONCE"
      }
      warning = {
        operator              = "above"
        threshold             = 2.0
        threshold_duration    = 600
        threshold_occurrences = "AT_LEAST_ONCE"
      }
    }
  }
}