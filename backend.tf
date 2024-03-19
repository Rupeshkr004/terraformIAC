terraform {
  backend "azurerm" {
    storage_account_name = "terraformbackupstfile01"
    container_name       = "statefile-backup"
    key                  = "terraform.tfstate"

    access_key = "eOv5mwQaNd9aAGoAR1xRfNJzbsym7gFc3dzgUZiNXUCVnU67QGpfynkP29L+dMKxMR+PM+R39VKI+AStxx9NBA=="
  }
}
