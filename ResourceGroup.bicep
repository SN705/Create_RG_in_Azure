param location string = 'eastus'
param rgname string = 'Dino_Smiles_RG456'
targetScope = 'subscription'
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgname
  location: location
}
