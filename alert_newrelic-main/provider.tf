terraform {
  required_version = "~> 1.0"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

# Configure the New Relic provider
provider "newrelic" {
  account_id = var.account_id"
  api_key    = "NNRAK-GPKIRSP21NOOWQD3X1M87QDO6U7" 
  region     = "US"                               # Valid regions are US and EU
}
