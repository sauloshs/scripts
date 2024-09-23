# Defina as variáveis
$resourceGroupName = "SeuResourceGroup"
$aksClusterName = "SeuAKSCluster"
$nodePoolName = "NomeDoNodePool"

# Escalar o NodePool para zero nós
az aks nodepool scale `
  --resource-group $resourceGroupName `
  --cluster-name $aksClusterName `
  --name $nodePoolName `
  --node-count 0