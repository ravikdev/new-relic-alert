terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}
resource "newrelic_alert_policy" fooo1{
    name=var.policynames
}