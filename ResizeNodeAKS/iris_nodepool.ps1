# Defina as variáveis
$resourceGroupName = "SeuResourceGroup"
$aksClusterName = "SeuAKSCluster"
$nodePoolName = "irisbackup"
$nodeCount = 6
$kubernetesVersion = "1.28.10"
$maxPods = 110 # Ajuste conforme necessário
$maxSurge = "33%"
$vmSize = "Standard_DS2_v2" # Ajuste conforme necessário
$osType = "Linux"
$osSKU = "Ubuntu"
$diskSize = 128 # Tamanho do disco em GB
$nodeTaints = "role=iris:NoSchedule" # Ajuste conforme necessário
$nodeLabels = "application=iris" # Ajuste conforme necessário
$zones = "1 2 3" # Ajuste conforme necessário

# Defina as tags fixas
$tags = @{
    ccname = "Operations"
    ccid = "2515151515151514"
    teamname = "CloudOps"
    owner = "Gestor_de_Operacoes"
    classification = "Restrito"
    criticality = "High"
    environment = "prd"
    ticketid = "5151"
    clustername = "NomeDiferenteDoCluster"
}

# Crie o NodePoolc
az aks nodepool add `
  --resource-group $resourceGroupName `
  --cluster-name $aksClusterName `
  --name $nodePoolName `
  --node-count $nodeCount `
  --kubernetes-version $kubernetesVersion `
  --max-pods $maxPods `
  --max-surge $maxSurge `
  --node-vm-size $vmSize `
  --os-type $osType `
  --os-sku $osSKU `
  --node-taints $nodeTaints `
  --node-labels $nodeLabels `
  --zones $zones `
  --tags $tags `
  --node-osdisk-size $diskSize