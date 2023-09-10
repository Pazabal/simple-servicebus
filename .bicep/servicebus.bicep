
param location string = resourceGroup().location

resource serviceBus 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name: 'servicebuspazabal'
  location: location
  tags: {
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  identity: {
    type: 'SystemAssigned'
  }
  
}
