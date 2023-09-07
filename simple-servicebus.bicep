param serviceBusNamespaceName string = 'myServiceBusNamespace'
param location string = 'East US'

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name: serviceBusNamespaceName
  location: location
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  tags: {}
}
