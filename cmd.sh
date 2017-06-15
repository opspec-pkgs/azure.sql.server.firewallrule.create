#!/usr/bin/env sh

### begin login
loginCmd='az login -u "$loginId" -p "$loginSecret"'

# handle opts
if [ "$loginTenantId" != " " ]; then
    loginCmd=$(printf "%s --tenant %s" "$loginCmd" "$loginTenantId")
fi

case "$loginType" in
    "user")
        echo "logging in as user"
        ;;
    "sp")
        echo "logging in as service principal"
        loginCmd=$(printf "%s --service-principal" "$loginCmd")
        ;;
esac
eval "$loginCmd" >/dev/null

echo "setting default subscription"
az account set --subscription "$subscriptionId"
### end login

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