



#Meta-Arguments

1. depends_on   - This is used for Explicit dependency
2. count        - 
3. for_each
4. life_cycle
5. providers    - This will configure the cloud provider




resource "azurerm_resource_group" "demo_cpg02" {
name = "rg-icici-app-01"
location = "west europe"
}



