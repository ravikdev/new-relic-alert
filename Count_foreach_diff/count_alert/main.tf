terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

resource "newrelic_alert_policy" "example" {
  count=length(var.count-value)//Check how many index is there 
  name=var.count-value[count.index].name
  incident_preference = var.count-value[count.index].incident_preference
}
