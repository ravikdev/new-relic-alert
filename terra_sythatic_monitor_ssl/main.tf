terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
  }
}

resource "newrelic_synthetics_cert_check_monitor" "cert-check-monitor" {
  name                   = "SSl-check-monitor-2"
  domain                 = "www.clovermayes.com"
  locations_public       = ["AP_SOUTH_1"]
  certificate_expiration = "100"
  period                 = "EVERY_DAY"
  status                 = "ENABLED"
  tag {
    key    = "some_key"
    values = ["some_value"]
  }
}