#!/bin/bash

# Defina as variáveis
RESOURCE_GROUP="nome-do-grupo-de-recursos"
CLUSTER_NAME="nome-do-cluster-aks"
NODEPOOL_NAME="nome-do-nodepool"

# Verifique se o cluster e o nodepool existem
if az aks show --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME &> /dev/null; then
  if az aks nodepool show --resource-group $RESOURCE_GROUP --cluster-name $CLUSTER_NAME --name $NODEPOOL_NAME &> /dev/null; then
    # Remova o nodepool
    az aks nodepool delete --resource-group $RESOURCE_GROUP --cluster-name $CLUSTER_NAME --name $NODEPOOL_NAME
    echo "Nodepool removido com sucesso!"
  else
    echo "Nodepool não encontrado."
  fi
else
  echo "Cluster não encontrado."
fi