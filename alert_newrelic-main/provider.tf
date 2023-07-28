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
  account_id = "313456"
  api_key    = "NRAK-SHD8YRB72A2LA2FF7LJ515THKLW" 
  region     = "US"                               # Valid regions are US and EU
}
