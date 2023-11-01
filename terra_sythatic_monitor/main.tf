terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

resource "newrelic_synthetics_broken_links_monitor" "monitor" {
  name             = "broken-links-monitor"
  uri              = "https://www.clovermayes.com"
  locations_public = ["AP_SOUTH_1"]
  period           = "EVERY_12_HOURS"
  status           = "ENABLED"
  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}
