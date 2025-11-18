
#when we are executing the dev environment we need to explicit reference this hdfc-dev.tfvars file
# so that it can call the values inside this file during execution 
rg_name = "rg-hdfc-dev"
hdfc_vm_name    = "hdfc-dev-vm01"
nic_name    = "hdfc-dev-nic01"
subscription_id = "0f87b7f3-b8ff-4c25-b09a-901f6869202e"
hdfc_vm_size    = "Standard_D16a_v4"