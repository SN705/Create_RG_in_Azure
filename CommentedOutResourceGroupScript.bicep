//Create a Resource Group
//First Step of Creating Web Server in Azure

//Deploy using Azure CLI
//az login
//az deployment sub create --subscription "simon_subscription" --location canadacentral --template-file "D:\Sem 4 Capstone\Bicep_scripts\resourcegroup.bicep"

      //Adjust for desired subscription name, location, and file path on local host
      //Note that location is overridden by location parameter value in the script

//Define location and RG name
param location string = 'eastus'
param rgname string = 'Dino_Smiles_RG456'

//specify the subscription scope since the ARM template below implies resource group scope
targetScope = 'subscription'

//Invoke ARM template
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgname
  location: location
}
