# problem statement
creates an azure sql server firewall rule (if it doesn't already exist)

# example usage

> note: in examples, VERSION represents a version of the azure.sql.server.firewallrule.create pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/azure.sql.server.firewallrule.create#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/azure.sql.server.firewallrule.create#VERSION
```

## compose

```yaml
run:
  op:
    pkg: { ref: github.com/opspec-pkgs/azure.sql.server.firewallrule.create#VERSION }
    inputs: 
      subscriptionId:
      azureUsername:
      azurePassword:
      name:
      server:
      resourceGroup:
      startIPAddress:
      endIPAddress:
```
