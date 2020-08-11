terraform init
erase .terraform\plugins\windows_amd64\terraf*.exe
copy c:\users\daweins\go\bin\terraf*.exe .\.terraform\plugins\windows_amd64\terraform-provider-azurerm_v2.22.0_x5.exe
terraform init
terraform apply -var-file="config.tfvars"