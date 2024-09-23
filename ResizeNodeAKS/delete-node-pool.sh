# Defina as variáveis
$resourceGroupName = "SeuResourceGroup"
$aksClusterName = "SeuAKSCluster"
$nodePoolName = "NomeDoNodePool"

# Deletar o NodePool
az aks nodepool delete `
  --resource-group $resourceGroupName `
  --cluster-name $aksClusterName `
  --name $nodePoolName