terraform {

  required_providers {

    newrelic = {

      source = "newrelic/newrelic"

      version = "3.26.0"

    }

  }

}

provider "newrelic" {

  account_id = 407866
  region = "US"  

}