provider "fly" {
  fly_http_endpoint = "api.machines.dev"
}

provider "random" {}

module "vaultwarden" {
  #source  = "OJFord/vaultwarden/fly"
  # org = "personal" added in main.tf
  source = "../terraform-fly-vaultwarden"
  #version = "0.1.0"

  env = {
    WEBSOCKET_ENABLED   = "true"
    SENDS_ALLOWED       = "true"
    PASSWORD_ITERATIONS = 500000
    SIGNUPS_ALLOWED     = "true"
    SIGNUPS_VERIFY      = "true"
    ADMIN_TOKEN         = "never do like this"
    LOG_FILE            = "/data/vaultwarden.log"
    LOG_LEVEL           = "warn"
    EXTENDED_LOGGING    = "true"
    TZ                  = "Europe/Berlin"
  }
  region              = "arn"
  size_gb             = 1
  vaultwarden_version = "1.29.2"
}
