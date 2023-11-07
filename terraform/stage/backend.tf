terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "bucket.reddit"
    region                      = "ru-central1"
    key                         = "stage.tfstate"
    access_key                  = "YCAJERsxAv7J9sUlx2r85loyR"
    secret_key                  = "YCOta8VeeC2xJzvKyHpBtc7KMXSQKOK0A5MFn4F9"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
