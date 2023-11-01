provider "newrelic" {
  account_id = var.account_id
  api_key = var.api_key    # usually prefixed with 'NRAK'
  region = "US"                    # Valid regions are US and EU
}