terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

# resource "newrelic_alert_policy" "example" {
#   count=length(var.count-value)//Check how many index is there 
#   name=var.count-value[count.index].name
# }
resource "newrelic_alert_policy" "alert_policies" {
  for_each = var.count-value

  name = var.count-value[each.key].name
  incident_preference= var.count-value[each.key].incident_preference
}
