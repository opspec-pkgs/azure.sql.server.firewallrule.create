#!/usr/bin/env sh

echo "logging in to azure"
az login -u "$azureUsername" -p "$azurePassword" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"

echo "checking for exiting sql server firewall rule"
if [ "$(az sql server firewall-rule show --name "$name" --resource-group "$resourceGroup" --server "$server")" != "" ]
then
  echo "found exiting sql server firewall rule"
else
  echo "creating sql server firewall rule"
  az sql server firewall-rule create \
    --name "$name" \
    --server "$server" \
    --resource-group "$resourceGroup" \
    --start-ip-address "$startIPAddress" \
    --end-ip-address "$endIPAddress"
fi