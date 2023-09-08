param namespaceName string
param location string = resourceGroup().location

resource servicebusNamespace 'Microsoft.ServiceBus/namespaces@2017-04-01' = {
  name: namespaceName
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}
