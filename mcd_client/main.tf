

# #Creating VM Using Module Code
# module "rinkesh_vm" {                #syntax   # user defined 
#     source = "../modules/windows_virtual_machine"
#     env = ""
#     postfix = ""
#     app = ""
#     location = ""
# }   



module "dev_rg" {
  source   = "../modules/resource_group"
  env      = "md-rafi"
  postfix  = "analysis"
  app      = "sales"
  location = "south india"
  tags = {
    "architect"   = "shabnam"
    "developer"   = "sai ram"
    "project_man" = "murali"
  }
}


#C:\Users\Rinkesh\demo-cpg02-batch-repo\modules\windows_virtual_machine
#C:\Users\Rinkesh\demo-cpg02-batch-repo\mcd_client
# modules\windows_virtual_machine

