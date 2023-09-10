// param keyVaultName string = 'pazkeyvault'


// resource keyVault 'Microsoft.KeyVault/vaults@2022-07-01' = {
//   name: keyVaultName
//   location: resourceGroup().location
//   properties: {
//     sku: {
//       family: 'A'
//       name: 'standard'
//     }
//     accessPolicies: [
//       {
//         tenantId: '6aacc609-1313-401e-8f1b-76cdce1bbe51' // Replace with your Azure AD Tenant ID
//         objectId: '5626f5a8-9b72-4118-995c-09e82765b2b9' // Replace with the object ID of the service principal or user
//         permissions: {
//           keys: ['get']
//           secrets: ['get']
//         }
//       }
//     ]
//   }
// }

// resource keyVaultSecret 'Microsoft.KeyVault/vaults/secrets@2022-02-01' = {
//   name: '${keyVault.name}/pazkeyvault' // Replace with your secret name
//   properties: {
//     value: 'pazkeyvault' // Replace with your secret value
//   }
//   dependsOn: [
//     keyVault
//   ]
// }

resource serviceBus 'Microsoft.ServiceBus/namespaces@2022-10-01-preview' = {
  name: 'pazservicebus'
  location: 'EastUS'
  tags: {
    tagName1: 'servicebus1'
    tagName2: 'servicebus2'
  }
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  identity: {
    type: 'SystemAsigned'
  }
  // properties: {
  //   encryption: {
  //     keySource: 'Microsoft.KeyVault'
  //     keyVaultProperties: [
  //       {
  //         identity: {
  //           userAssignedIdentity: 'SystemAssigned'
  //         }
  //         keyName: keyVaultName
  //         keyVaultUri: 'string'
  //         keyVersion: 'string'
  //       }
  //     ]
  //   }
  //   zoneRedundant: true
  // }
}



// output keyVaultResourceId string = keyVault.id
// output keyVault string = properties. 
